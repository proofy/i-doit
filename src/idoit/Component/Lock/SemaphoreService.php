<?php

namespace idoit\Component\Lock;

use idoit\Component\Lock\Store\SimpleFileStore;
use Psr\Log\LoggerInterface;
use Symfony\Component\Lock\Exception\LockAcquiringException;
use Symfony\Component\Lock\Exception\LockConflictedException;
use Symfony\Component\Lock\Exception\LockExpiredException;
use Symfony\Component\Lock\Exception\LockReleasingException;
use Symfony\Component\Lock\Factory;
use Symfony\Component\Lock\Lock;
use Symfony\Component\Lock\Store\RetryTillSaveStore;

/**
 * Abstracts the usage of symfony/lock
 *
 * @package idoit\Component\Lock
 */
class SemaphoreService
{
    /**
     * @var Factory
     */
    private $lock;

    /**
     * @var Lock[]
     */
    private $existingLocks = [];

    /**
     * SemaphoreService constructor.
     *
     * @param string $lockPath
     */
    public function __construct($lockPath)
    {
        $this->lock = new Factory(new RetryTillSaveStore(SimpleFileStore($lockPath)));
    }

    public function setLogger(LoggerInterface $logger)
    {
        $this->lock->setLogger($logger);
    }

    /**
     * @return Lock[]
     */
    public function getExistingLocks()
    {
        return $this->existingLocks;
    }

    /**
     * Starts editing by given identifier
     *
     * @param string $identifier
     * @param bool $blocking
     *
     * @return bool
     */
    public function startEdit($identifier, $blocking = false)
    {
        $lock = $this->lock->createLock($identifier, 0, false);

        $acquirable = true;

        try {
            $acquirable = $lock->acquire($blocking);

            $this->existingLocks[$identifier] = $lock;
        } catch (LockAcquiringException $lockAcquiringException) {
            return false;
        } catch (LockConflictedException $lockConflictedException) {
            return false;
        } catch (LockExpiredException $lockExpiredException) {
            return false;
        }

        return $acquirable;
    }

    /**
     * Stops editing by given identifier
     *
     * @param $identifier
     *
     * @return bool
     */
    public function stopEditing($identifier)
    {
        try {
            $lock = $this->lock->createLock($identifier, 0, false);
            $lock->release();
        } catch (LockReleasingException $lockReleasingException) {
            return false;
        }

        unset($this->existingLocks[$identifier]);

        return true;
    }

    /**
     * Checks if given identifier is already aquired
     *
     * @param string $identifier
     * @param bool $blocking
     *
     * @return bool
     */
    public function isEditable($identifier, $blocking = false)
    {
        $lock = $this->lock->createLock($identifier, 0, false);

        return $lock->isAcquired();
    }
}

<?php

namespace idoit\Component\Lock\Store;

use InvalidArgumentException;
use isys_settings;
use Symfony\Component\Lock\Exception\LockConflictedException;
use Symfony\Component\Lock\Exception\LockStorageException;
use Symfony\Component\Lock\Exception\NotSupportedException;
use Symfony\Component\Lock\Key;
use Symfony\Component\Lock\StoreInterface;

class SimpleFileStore implements StoreInterface
{
    /**
     * @var string
     */
    private $lockPath;

    /**
     * @param string|null $lockPath the directory to store the lock, defaults to the system's temporary directory
     *
     * @throws LockStorageException If the lock directory doesn’t exist or is not writable
     */
    public function __construct($lockPath = null)
    {
        if (null === $lockPath) {
            global $g_dirs;

            $lockPath = isys_settings::get('system.dir.semaphore', $g_dirs['temp'] . 'lock/');
        }
        if (!is_dir($lockPath) || !is_writable($lockPath)) {
            throw new LockStorageException(sprintf('The directory "%s" is not writable.', $lockPath));
        }

        $this->lockPath = $lockPath;
    }

    /**
     * Stores the resource if it's not locked by someone else.
     *
     * @param Key $key
     * @throws LockConflictedException
     */
    public function save(Key $key)
    {
        $this->lock($key, false);
    }

    /**
     * Waits until a key becomes free, then stores the resource.
     *
     * If the store does not support this feature it should throw a NotSupportedException.
     *
     * @param Key $key
     * @throws LockConflictedException
     * @throws NotSupportedException
     */
    public function waitAndSave(Key $key)
    {
        throw new NotSupportedException('Not supported ' . __CLASS__);
    }

    /**
     * Extends the ttl of a resource.
     *
     * If the store does not support this feature it should throw a NotSupportedException.
     *
     * @param float $ttl amount of second to keep the lock in the store
     *
     * @param Key $key
     * @throws LockConflictedException
     * @throws NotSupportedException
     */
    public function putOffExpiration(Key $key, $ttl)
    {
        throw new NotSupportedException('Not supported ' . __CLASS__);
    }

    /**
     * Removes a resource from the storage.
     *
     * @param Key $key
     */
    public function delete(Key $key)
    {
        $fileName = sprintf('%s/idoit.%s.%s.lock',
            $this->lockPath,
            preg_replace('/[^a-z0-9\._-]+/i', '-', $key),
            strtr(substr(base64_encode(hash('sha256', $key, true)), 0, 7), '/', '_')
        );

        unlink($fileName);
    }

    /**
     * Returns whether or not the resource exists in the storage.
     *
     * @param Key $key
     *
     * @return bool
     */
    public function exists(Key $key)
    {
        $fileName = sprintf('%s/idoit.%s.%s.lock',
            $this->lockPath,
            preg_replace('/[^a-z0-9\._-]+/i', '-', $key),
            strtr(substr(base64_encode(hash('sha256', $key, true)), 0, 7), '/', '_')
        );

        return file_exists($fileName);
    }

    private function lock(Key $key, $blocking)
    {
        $fileName = sprintf('%s/idoit.%s.%s.lock',
            $this->lockPath,
            preg_replace('/[^a-z0-9\._-]+/i', '-', $key),
            strtr(substr(base64_encode(hash('sha256', $key, true)), 0, 7), '/', '_')
        );

        if ($blocking === false && file_exists($fileName)) {
            throw new LockConflictedException();
        }

        if (file_put_contents($fileName, '') === false) {
            throw new LockStorageException('Could not aquire, yet the lock was not created');
        }

        $key->setState(__CLASS__, $fileName);
    }
}

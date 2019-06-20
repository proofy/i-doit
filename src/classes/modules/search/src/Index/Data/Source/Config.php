<?php

namespace idoit\Module\Search\Index\Data\Source;

use Symfony\Component\Console\Helper\ProgressBar;
use Symfony\Component\Console\Output\OutputInterface;

/**
 * Class Config
 *
 * @package idoit\Module\Search\Index\Data\Source
 * @codeCoverageIgnore
 */
class Config
{
    /**
     * @var int[]
     */
    private $objectIds = [];

    /**
     * @return int[]
     */
    public function getObjectIds()
    {
        return $this->objectIds;
    }

    /**
     * @param int[] $objectIds
     */
    public function setObjectIds(array $objectIds)
    {
        $this->objectIds = $objectIds;
    }

    /**
     * @return bool
     */
    public function hasObjectIds()
    {
        return !empty($this->getObjectIds());
    }
}

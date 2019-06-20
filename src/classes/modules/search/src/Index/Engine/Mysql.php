<?php

namespace idoit\Module\Search\Index\Engine;

use idoit\Module\Search\Index\Document;
use idoit\Module\Search\Index\Exception\DocumentExists;
use isys_component_database;
use isys_exception_database_mysql;
use MySQL\Error\Server as MySQLServerErrors;

/**
 * i-doit
 *
 * Mysql
 *
 * @package     i-doit
 * @subpackage  Search
 * @author      Kevin Mauel <kmauel@i-doit.com>
 * @version     1.11
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class Mysql implements SearchEngine
{
    /**
     * @var isys_component_database
     */
    private $database;

    /**
     * Mysql constructor.
     *
     * @param isys_component_database $database
     */
    public function __construct(
        isys_component_database $database
    ) {
        $this->database = $database;
    }

    /**
     * @param Document $document
     *
     * @throws \isys_exception_database_mysql
     * @throws DocumentExists
     */
    public function insertDocument(Document $document)
    {
        $sql = sprintf('INSERT INTO isys_search_idx SET isys_search_idx__version=%d, isys_search_idx__type="%s", isys_search_idx__metadata=\'%s\', isys_search_idx__key="%s", isys_search_idx__value="%s", isys_search_idx__reference=%d;',
            $document->getVersion(), $document->getType(), json_encode($document->getMetadata(), JSON_UNESCAPED_UNICODE), $this->database->escape_string($document->getMetadata()->__toString()), $this->database->escape_string($document->getValue()), $document->getReference());

        try {
            $this->database->query($sql) && $this->database->commit();
        } catch (isys_exception_database_mysql $exception) {
            if ($exception->getCode() === MySQLServerErrors::ER_DUP_ENTRY) {
                throw new DocumentExists('');
            }

            if ($exception->getCode() === MySQLServerErrors::ER_LOCK_WAIT_TIMEOUT) {
                return;
            }

            throw $exception;
        }
    }

    /**
     * @param Document $document
     */
    public function updateDocument(Document $document)
    {
        try {
            $sql = sprintf('UPDATE isys_search_idx SET isys_search_idx__metadata=\'%s\', isys_search_idx__key="%s", isys_search_idx__value="%s" WHERE isys_search_idx__version = 1 AND isys_search_idx__key="%s";',
                json_encode($document->getMetadata()), $this->database->escape_string($document->getMetadata()->__toString()), $this->database->escape_string($document->getValue()), $document->getMetadata()->__toString());
            $this->database->query($sql) && $this->database->commit();
        } catch (isys_exception_database_mysql $exception) {
            if ($exception->getCode() === MySQLServerErrors::ER_LOCK_WAIT_TIMEOUT) {
                return;
            }

            throw $exception;
        }
    }

    /**
     * @param Document $document
     */
    public function deleteDocument(Document $document)
    {
        try {
            $this->database->query('DELETE FROM isys_search_idx WHERE isys_search_idx__version = 1 AND ' . 'isys_search_idx__key = "' . $document->getKey() . '" AND isys_search_idx__reference = "' . $document->getReference() . '"');
        } catch (isys_exception_database_mysql $exception) {
            if ($exception->getCode() === MySQLServerErrors::ER_LOCK_WAIT_TIMEOUT) {
                return;
            }

            throw $exception;
        }
    }

    /**
     * Retrieves unique document references
     *
     * @return int[]
     */
    public function retrieveUniqueDocumentReferences()
    {
        $references = [];

        $documentReferences = $this->database->retrieveArrayFromResource($this->database->query('SELECT DISTINCT isys_search_idx__reference FROM isys_search_idx;'));

        foreach ($documentReferences as $reference) {
            $references[] = (int)$reference['isys_search_idx__reference'];
        }

        return $references;
    }

    /**
     * Truncates index table
     */
    public function clearIndex()
    {
        $this->database->query('TRUNCATE TABLE isys_search_idx;');
    }

    /**
     * @param string
     *
     * @return void
     */
    public function deleteByWildcard($wildcard)
    {
        try {
            $this->database->query('DELETE FROM isys_search_idx WHERE isys_search_idx__version = 1 AND ' . 'isys_search_idx__key LIKE "' . $wildcard . '"');
        } catch (isys_exception_database_mysql $exception) {
            if ($exception->getCode() === MySQLServerErrors::ER_LOCK_WAIT_TIMEOUT) {
                return;
            }

            throw $exception;
        }
    }
}

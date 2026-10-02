CREATE TABLE named_collection_reporting (value UInt32) ENGINE = Memory;
CREATE TEMPORARY TABLE temporary_named_collection_reporting (value UInt32);

SELECT named_collection, toTypeName(named_collection)
FROM system.tables
WHERE database = currentDatabase() AND name = 'named_collection_reporting';

SELECT named_collection, toTypeName(named_collection)
FROM system.tables
WHERE is_temporary AND name = 'temporary_named_collection_reporting';

DROP TABLE temporary_named_collection_reporting;
DROP TABLE named_collection_reporting;
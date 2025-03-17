CREATE KEYSPACE IF NOT EXISTS storage_keyspace WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : '1' };


CREATE TABLE file_chunks
(
    file_id     uuid,
    chunk_index int,
    chunk_data  blob,
    PRIMARY KEY (file_id, chunk_index)
) WITH CLUSTERING ORDER BY (chunk_index ASC);
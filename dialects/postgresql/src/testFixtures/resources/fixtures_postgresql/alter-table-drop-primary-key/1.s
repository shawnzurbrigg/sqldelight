CREATE TABLE primary_key_data(
  data TEXT,
  value INT,

  CONSTRAINT primary_key_data_pkey PRIMARY KEY (data)
);

ALTER TABLE primary_key_data
    DROP CONSTRAINT primary_key_data_pkey,
    DROP CONSTRAINT IF EXISTS non_existent_key,
    ADD CONSTRAINT primary_key_value_pkey PRIMARY KEY (value);
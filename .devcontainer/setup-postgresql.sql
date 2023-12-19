-- Create a table in the database
CREATE TABLE MyTable (
  ID SERIAL PRIMARY KEY,
  Item TEXT
);

-- Populate the table
INSERT INTO MyTable (Item) VALUES ('One'), ('Two'), ('Three');
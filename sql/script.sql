-- Create the table in the source
CREATE TABLE tb_customers(
  id integer PRIMARY KEY,
  name VARCHAR(200),
  updated_at timestamp DEFAULT NOW() NOT NULL
);

-- Insert some records
INSERT INTO tb_customers(id, name) VALUES(1, 'Bob');
INSERT INTO tb_customers(id, name) VALUES(2, 'Maria');
INSERT INTO tb_customers(id, name) VALUES(3, 'Joana');

-- Check the records
SELECT * FROM tb_customers;

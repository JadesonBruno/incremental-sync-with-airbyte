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

-- Create function to update the 'updated_at' field on update
CREATE OR REPLACE FUNCTION fn_set_timestamp()
RETURNS TRIGGER AS $$
    BEGIN
        NEW.updated_at := NOW();
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;

-- Create trigger to call the function on update
CREATE TRIGGER trg_set_timestamp
    BEFORE UPDATE ON tb_customers
    FOR EACH ROW
    EXECUTE PROCEDURE fn_set_timestamp();

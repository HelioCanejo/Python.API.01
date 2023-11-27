-- Apagar as tabelas caso existem
-- CUIDADO!! Isso destroi todos os dados do banco

DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS owner;

-- Criar a tabela 'owner'.
CREATE TABLE owner(
    owner_id INTEGER PRIMARY KEY AUTOINCREMENT,
    owner_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    owner_name TEXT,
    owner_email TEXT,
    owner_password TEXT,
    owner_birth DATE,
    owner_status TEXT DEFAULT 'on',
	owner_field1,
	owner_field2
);

-- Popular a tabela 'ouwer' com dados 'fake'.
INSERT INTO owner (owner_id, owner_date, owner_name, 
owner_email, owner_password, owner_birth, owner_status)
VALUES 
('1','2023-09-28 10:11:12','Joca da Silva','joca@silva.com',
'123','1988-12-14','on');

INSERT INTO owner (owner_name, owner_email, owner_password, owner_birth, owner_status) VALUES
    ('John Doe', 'john.doe@email.com', 'password123', '1990-05-15 10:11:12', 'on'),
    ('Jane Smith', 'jane.smith@email.com', 'securepass', '1985-09-28 10:11:12', 'off'),
    ('Bob Johnson', 'bob.johnson@email.com', 'pass1234', '1992-11-10 10:11:12', 'on'),
    ('Alice Brown', 'alice.brown@email.com', 'abc@123', '1988-03-22 10:11:12', 'off'),
	('Alice Bip', 'alice.brownj@email.com', 'abc@1223', '1988-10-20 10:11:12', 'off');
	
-- Criar tabela 'item'
CREATE TABLE item(
	item_id INTEGER PRIMARY KEY AUTOINCREMENT,
	item_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	item_name TEXT,
	item_description TEXT,
	item_location TEXT,
	item_owner INTEGER,
	item_status TEXT DEFAULT 'on',
	item_field1 TEXT,
	item_field2 TEXT,
	FOREIGN KEY (item_owner) REFERENCES owner (owner_id)
	
);

-- Popular a tabela 'item' com dados 'fake'.

INSERT INTO item (item_date, item_name, item_description, item_location, item_owner, item_status) VALUES
    ('2023-05-12 10:11:12', 'Headphones', 'Wireless noise-canceling headphones', 'Home Office', 1, 'on'),
    ('2012-06-13 10:11:12', 'Tablet', '10-inch tablet with HD display', 'Living Room', 2, 'on'),
    ('2003-07-06 10:11:12', 'Guitar', 'Electric guitar with amplifier', 'Music Room', 3, 'on'),
    ('2006-02-03 10:11:12', 'Sunglasses', 'Designer sunglasses', 'Car', 4, 'on'),
	('1999-12-06 10:11:12', 'Camera', 'Professional DSLR camera', 'Studio', 3, 'on'),
	('2018-08-27 10:11:12', 'Laptop', 'High-performance laptop', 'Home Office', 6, 'on');





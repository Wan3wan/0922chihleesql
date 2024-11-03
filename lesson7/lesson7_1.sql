CREATE TABLE IF NOT EXISTS 市場(
 name VARCHAR(20),
 country varchar(20),
 primary key(name)
);

CREATE TABLE IF NOT EXISTS 股市(
 stock_id SERIAL,
 date DATE,
 open NUMERIC(17,10),
 high NUMERIC(17,10),
 low NUMERIC(17,10),
 close NUMERIC(17,10),
 adj_close NUMERIC(17,10),
 volume BIGINT DEFAULT 0,
 name VARCHAR(20),
 PRIMARY KEY(stock_id),
 FOREIGN KEY(name) REFERENCES 市場(name) 
 ON DELETE NO ACTION
 ON UPDATE CASCADE
);
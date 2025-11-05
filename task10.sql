BEGIN;
INSERT INTO users (name) VALUES ('Frank');
INSERT INTO users (name) VALUES ('Grace');
INSERT INTO users (name) VALUES ('Helen');
INSERT INTO users (name) VALUES ('Ian');
INSERT INTO users (name) VALUES ('Judy');
COMMIT;


BEGIN;
UPDATE users SET name = 'Unknown' WHERE id = 2;
SELECT * FROM users WHERE id = 2;
ROLLBACK;

BEGIN;
UPDATE users SET name = 'Robert' WHERE id = 2;
UPDATE users SET name = 'Alice Smith' WHERE id = 1;
COMMIT;

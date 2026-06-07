---------------------------------------------------------------
ALTER TABLE USERS DROP COLUMN IF EXISTS token;
ALTER TABLE USERS ADD COLUMN IF NOT EXISTS is_admin BOOLEAN DEFAULT FALSE;
---------------------------------------------------------------
ALTER TABLE USERS DROP COLUMN IF EXISTS valid;
ALTER TABLE USERS ADD COLUMN IF NOT EXISTS is_active BOOLEAN DEFAULT TRUE;
---------------------------------------------------------------
INSERT INTO USERS(name, surname, username, email, password, is_admin)
VALUES('igea', 'igea', 'igea', 'hd-lsd.dsdra@uniroma1.it', md5('@igea#'), TRUE);
---------------------------------------------------------------

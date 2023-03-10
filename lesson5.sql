-- Active: 1674041361256@@127.0.0.1@5432@myproject

CREATE TABLE USERS (
    USER_ID SERIAL NOT NULL PRIMARY KEY,
    USERNMAE VARCHAR(32) NOT NULL,
    FIRSTNAME VARCHAR(24) NOT NULL,
    LASTNAME VARCHAR(24) NOT NULL,
    CREATED_AT TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

--  TRIGGERS
 CREATE FUNCTION USERS_TRIGGER_FN () RETURNS TRIGGER LANGUAGE PLPGSQL AS
 $$

    BEGIN

        IF NEW.USERNAME IS NOT NULL AND NEW.LASTNAME IS NOT NULL THEN

            UPDATE USERS SET RATING = 5 WHERE USER_ID = NEW.USER_ID;

        ELSEIF NEW.USERNMAE IS NOT NULL AND NEW.LASTNAMEIS NOT NULL THEN

            UPDATE USERS SET RATING = 3 WHERE USER_ID = NEW.USER_ID;

        END IF;

        RETURN NULL;

    END;
$$
;

CREATE TRIGGER USERS_TRIGGER
BEFORE INSERT ON USERS
FOR EACH EXECUTE PROCEDURE USERS_TRIGGER_FN()
;

INSERT INTO USERS (FIRSTNAME, LASTNAME) VALUES ('F', 'L', 'U');

DROP TRIGGER USERS_TRIGGER ON USERS;

INSERT INTO USERS (EMAIL, FNAME, LNAME, ROOM_NUMBER) VALUES ('SHEROZBEKKHAMIDOV@WEB.COM', 'SHEROZBEK', 'KHAMIDOV', 1)
;
INSERT INTO USERS (EMAIL, FNAME, LNAME, ROOM_NUMBER) VALUES ('C@WEB.COM', 'MUHRIDDIN', 'NAJMIDDINOV', 2)
;

INSERT INTO USERS (EMAIL, FNAME, LNAME, ROOM_NUMBER) VALUES ('E@WEB.COM', 'ALI', 'ZOYIROV', 2)
;



CREATE UNIQUE INDEX EMAIL_IDX ON USERS (EMAIL);
CREATE UNIQUE INDEX EMAIL_IDX ON USERS (LOWER(EMAIL));

CREATE UNIQUE INDEX FULLNAME_UNIQ_IDX ON USERS (FNAME, LNAME);

CREATE  INDEX ROOM_NUMBER_IND ON USERS (LOWER(EMAIL));

CREATE INDEX ROOM_NUMBER_IDX ON USERS USING BTREE (ROOM_NUMBER);





-- Active: 1674041361256@@127.0.0.1@5432@myproject

CREATE TABLE STUDENTS (
    ID SERIAL NOT NULL PRIMARY KEY,
    DATA JSONB,
    DATA1 TEXT
);
INSERT INTO STUDENTS (DATA, DATA1) VALUES
('{
    "NAME": "SHEROZBEK HAMIDOV",
    "AGE": 15,
    "ISACTIVE": TRUE
}', '{
    "NAME": "SHEROZBEK HAMIDOV",
    "AGE": 20,
    "ISACTIVE": TRUE
}') 

INSERT INTO STUDENTS (DATA, DATA1) VALUES
('{
    "NAME": "SHEROZBEK HAMIDOV",
    "AGE": 15,
    "ISACTIVE": TRUE
    "FRIEND": {
        "NAME": "AZIZ",
        "ISACTIVE": TRUE,
        "AGE": 20
    }
}', '{
    "NAME": "SHEROZBEK HAMIDOV",
    "AGE": 20,
    "ISACTIVE": TRUE
}') 


SELECT ROW_TO_JSON(ID) FROM STUDENTS;
SELECT DATA ->> 'NAME' FROM STUDENTS
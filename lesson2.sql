-- Active: 1674041361256@@127.0.0.1@5432@myproject
CREATE OR REPLACE FUNCTION FN(INOUT X INT, INOUT Y INT) LANGUAGE PLPGSQL AS
$$

    BEGIN

        X := X * X;
        Y := Y * Y;

    END;

$$;

DO
$$

    DECLARE
        I INT := 0;
    BEGIN

        LOOP
            IF I = 10 THEN

                EXIT:
            
            END IF;

            RAISE INFO '%', I;

            I - I + 1;
            
        END LOOP;

    END;

$$;

CREATE OR REPLACE FUNCTION GET_MOVIE(M_ID INT) RETURNS VARCHAR LANGUAGE PLPGSQLN AS
$$
    DECLARE
        M MOVIES%ROWTYPE;
    BEGIN

        SELECT * FROM MOVIES INTO M WHERE MOVIE_ID = M_ID;

        IF FOUND M THEN

            RETURN M.NAME;

        ELSE;

            RETURN (
                SELECT NAME FROM MOVIES WHERE MOVIE_ID = (
                    SELECT MAX(MOVIE_ID) FROM MOVIES
                )
            );

        END IF;

    END;

$$;
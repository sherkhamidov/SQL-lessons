-- Active: 1674041361256@@127.0.0.1@5432@myproject
INSERT INTO TOURNAMENTS (NAME) VALUES ('NAJOT TALIM CUP 2021');

INSERT INTO CLUBS (NAME) VALUES ('GOPHERS'), ('FLUTTER');
INSERT INTO CLUBS (NAME) VALUES ('FOUNDATATION #80'), ('FOUNDATION #60');

INSERT INTO GROUPS (LABEL, TOURNAMENT_ID) VALUES ('A', 1);
INSERT INTO GROUPS (LABEL, TOURNAMENT_ID) VALUES ('B', 1);
INSERT INTO GROUPS (LABEL, TOURNAMENT_ID) VALUES ('C', 1);
INSERT INTO GROUPS (LABEL, TOURNAMENT_ID) VALUES ('D', 1);

INSERT INTO TEAMS (GROUP_ID, CLUB_ID) VALUES (1, 2);
INSERT INTO TEAMS (GROUP_ID, CLUB_ID) VALUES (2, 1);
INSERT INTO TEAMS (GROUP_ID, CLUB_ID) VALUES (1, 3);
INSERT INTO TEAMS (GROUP_ID, CLUB_ID) VALUES (2, 5);
INSERT INTO TEAMS (GROUP_ID, CLUB_ID) VALUES (3, 4);

INSERT INTO MATCHES (DATE, TOURNAMENT_ID) VALUES ('20-09-2021', 1);
INSERT INTO MATCHES (DATE, TOURNAMENT_ID) VALUES ('21-09-2021', 1);
INSERT INTO MATCHES (DATE, TOURNAMENT_ID) VALUES ('22-09-2021', 1);
INSERT INTO MATCHES (DATE, TOURNAMENT_ID) VALUES ('23-09-2021', 1);


    
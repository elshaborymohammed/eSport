CREATE DATABASE report;

ALTER TABLE `team-club-dev`.person
    ADD COLUMN member_id varchar(255) UNIQUE;

UPDATE `team-club-dev`.person
SET member_id = FLOOR(RAND() * (999999 - 100000 + 1)) + 100000
WHERE member_id IS NULL;

ALTER TABLE `team-club-qa`.person
    ADD COLUMN member_id varchar(255) UNIQUE;

UPDATE `team-club-qa`.person
SET member_id = FLOOR(RAND() * (999999 - 100000 + 1)) + 100000
WHERE member_id IS NULL;

ALTER TABLE `team-club-preprod`.person
    ADD COLUMN member_id varchar(255) UNIQUE;

UPDATE `team-club-preprod`.person
SET member_id = FLOOR(RAND() * (999999 - 100000 + 1)) + 100000
WHERE member_id IS NULL;
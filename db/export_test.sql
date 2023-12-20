SELECT member_id,
       name,
       full_name_en,
       full_name_ar,
       role_en,
       email,
       mobile,
       nationality_en,
       contract_city_name_en,
       parent,
       id_type_en,
       id_number,
       gender_en,
       date_of_birth,
       age,
       joined_date,
       clans,
       clans_names_en,
       clans_names_ar,
       clubs,
       clubs_names_en,
       clubs_names_ar,
       teams_names_en,
       teams_names_ar,
       games,
       game_name,
       favourite,
       in_game_name,
       current_rank,
       contract,
       contract_type_en,
       contract_period,
       contract_from,
       contract_to,
       contract_salary,
       contract_status_en,
       contract_member_status_en,
       verified_by,
       request_id,
       verification_date,
       saudi_voice,
       profile_link,
       contract_request_id
FROM (SELECT p.member_id                                                                                     AS member_id,
             p.name                                                                                          AS name,
             profile.name                                                                                    AS role_en,
             profile.name_ar                                                                                 AS role_ar,
             p.email                                                                                         AS email,
             CONCAT(p.country_code, p.mobile_number)                                                         AS mobile,
             (CASE
                  WHEN p.gender = 'MALE' THEN 'Male'
                  WHEN p.gender = 'FEMALE' THEN 'Female'
                  ELSE 'N/A' END)                                                                            AS gender_en,
             (CASE
                  WHEN p.gender = 'MALE' THEN 'ذكر'
                  WHEN p.gender = 'FEMALE' THEN 'أنثى'
                  ELSE 'N/A' END)                                                                            AS gender_ar,
             DATE_FORMAT(p.birth_date, '%d-%m-%Y')                                                           AS date_of_birth,
             FLOOR(DATEDIFF(CURDATE(), p.birth_date) / 365)                                                  AS age,
             DATE_FORMAT(p.created_at, '%d-%m-%Y')                                                           AS joined_date,
             CONCAT('https://dev.saudiesports.sa/profile/member/', p.code)                                   AS profile_link,
             country.nationality                                                                             AS nationality_en,
             country.nationality_ar                                                                          AS nationality_ar,
             (SELECT COUNT(tm.id)
              FROM `team-club-dev`.team_member tm
                       LEFT JOIN `team-club-dev`.team t ON t.id = tm.team_id
              WHERE t.club_id IS NULL
                AND tm.account_id = p.id)                                                                    AS clans,
             (SELECT GROUP_CONCAT(t.name)
              FROM `team-club-dev`.team_member tm
                       LEFT JOIN `team-club-dev`.team t ON t.id = tm.team_id
              WHERE t.club_id IS NULL
                AND account_id = p.id)                                                                       AS clans_names_en,
             (SELECT GROUP_CONCAT(t.name_ar)
              FROM `team-club-dev`.team_member tm
                       LEFT JOIN `team-club-dev`.team t ON t.id = tm.team_id
              WHERE t.club_id IS NULL
                AND account_id = p.id)                                                                       AS clans_names_ar,
             (SELECT GROUP_CONCAT(t.name)
              FROM `team-club-dev`.team_member tm
                       LEFT JOIN `team-club-dev`.team t ON t.id = tm.team_id
              WHERE t.club_id IS NOT NULL
                AND account_id = p.id)                                                                       AS teams_names_en,
             (SELECT GROUP_CONCAT(t.name_ar)
              FROM `team-club-dev`.team_member tm
                       LEFT JOIN `team-club-dev`.team t ON t.id = tm.team_id
              WHERE t.club_id IS NOT NULL
                AND account_id = p.id)                                                                       AS teams_names_ar,
             (SELECT COUNT(DISTINCT cq.club_id)
              FROM (SELECT c.id AS club_id
                    FROM `team-club-dev`.team_member tm
                             LEFT JOIN `team-club-dev`.team t ON t.id = tm.team_id
                             LEFT JOIN `team-club-dev`.club c on c.id = t.club_id
                    WHERE t.club_id IS NOT NULL
                      AND t.type = 'CLUB_TEAM'
                      AND c.is_blocked = FALSE
                      AND tm.account_id = p.id
                    UNION
                    (SELECT club_admins.club_id AS club_id
                     FROM `team-club-dev`.club_admins
                              LEFT JOIN `team-club-dev`.club c on c.id = club_admins.club_id
                     WHERE c.is_blocked = FALSE
                       AND club_admins.account_id = p.id)
                    UNION
                    (SELECT club_content_creator.club_id AS club_id
                     FROM `team-club-dev`.club_content_creator
                              LEFT JOIN `team-club-dev`.club c on c.id = club_content_creator.club_id
                     WHERE c.is_blocked = FALSE
                       AND club_content_creator.account_id = p.id)) AS cq)                                   AS clubs,
             (SELECT GROUP_CONCAT(DISTINCT cq.club_name)
              FROM (SELECT c.club_name AS club_name
                    FROM `team-club-dev`.team_member tm
                             LEFT JOIN `team-club-dev`.team t ON t.id = tm.team_id
                             LEFT JOIN `team-club-dev`.club c on c.id = t.club_id
                    WHERE t.club_id IS NOT NULL
                      AND t.type = 'CLUB_TEAM'
                      AND c.is_blocked = FALSE
                      AND tm.account_id = p.id
                    UNION
                    (SELECT c.club_name AS club_name
                     FROM `team-club-dev`.club_admins
                              LEFT JOIN `team-club-dev`.club c on c.id = club_admins.club_id
                     WHERE c.is_blocked = FALSE
                       AND club_admins.account_id = p.id)
                    UNION
                    (SELECT c.club_name AS club_name
                     FROM `team-club-dev`.club_content_creator
                              LEFT JOIN `team-club-dev`.club c on c.id = club_content_creator.club_id
                     WHERE c.is_blocked = FALSE
                       AND club_content_creator.account_id = p.id)) AS cq)                                   AS clubs_names_en,
             (SELECT GROUP_CONCAT(DISTINCT cq.club_name_ar)
              FROM (SELECT c.club_name_ar AS club_name_ar
                    FROM `team-club-dev`.team_member tm
                             LEFT JOIN `team-club-dev`.team t ON t.id = tm.team_id
                             LEFT JOIN `team-club-dev`.club c on c.id = t.club_id
                    WHERE t.club_id IS NOT NULL
                      AND t.type = 'CLUB_TEAM'
                      AND c.is_blocked = FALSE
                      AND tm.account_id = p.id
                    UNION
                    (SELECT c.club_name_ar AS club_name_ar
                     FROM `team-club-dev`.club_admins
                              LEFT JOIN `team-club-dev`.club c on c.id = club_admins.club_id
                     WHERE c.is_blocked = FALSE
                       AND club_admins.account_id = p.id)
                    UNION
                    (SELECT c.club_name_ar AS club_name_ar
                     FROM `team-club-dev`.club_content_creator
                              LEFT JOIN `team-club-dev`.club c on c.id = club_content_creator.club_id
                     WHERE c.is_blocked = FALSE
                       AND club_content_creator.account_id = p.id)) AS cq)                                   AS clubs_names_ar,
             game.name                                                                                       AS game_name,
             (SELECT COUNT(g.id)
              FROM `team-club-dev`.member_games mg
                       LEFT JOIN `team-club-dev`.games g ON g.id = mg.game_id
              WHERE mg.person_id = p.id)                                                                     AS games,
             (SELECT IF((mg.game_id = game.id), 'YES', 'NO')
              FROM `team-club-dev`.member_games mg
              WHERE mg.person_id = p.id
              ORDER BY mg.game_order ASC
              LIMIT 1)                                                                                       AS favourite,
             (SELECT member_game_attributes.value
              FROM `team-club-dev`.attributes
                       LEFT JOIN `team-club-dev`.game_attributes ON attributes.id = game_attributes.attribute_id
                       LEFT JOIN `team-club-dev`.member_game_attributes
                                 ON game_attributes.id = member_game_attributes.game_attribute_id
                       LEFT JOIN `team-club-dev`.member_game_attr_values
                                 on member_game_attributes.id = member_game_attr_values.member_game_id
              WHERE attributes.code = 'in_game_name'
                AND member_game_attributes.member_game_id = member_game.id)                                  AS in_game_name,
             (SELECT ifnull(member_game_attributes.value, game_attribute_values.name)
              FROM `team-club-dev`.member_games mg
                       LEFT JOIN `team-club-dev`.games ON mg.game_id = games.id
                       LEFT JOIN `team-club-dev`.member_game_attributes ON mg.id = member_game_attributes.member_game_id
                       LEFT JOIN `team-club-dev`.game_attributes
                                 ON game_attributes.id = member_game_attributes.game_attribute_id
                       LEFT JOIN `team-club-dev`.member_game_attr_values
                                 ON member_game_attributes.id = member_game_attr_values.member_game_id
                       LEFT JOIN `team-club-dev`.game_attribute_values
                                 ON game_attribute_values.id = member_game_attr_values.game_attribute_value_id
              WHERE game_attributes.attribute_id = 7
                AND mg.id = member_game.id)                                                                  AS current_rank,
             (SELECT CASE
                         WHEN (p.entity_type = 'CONTENT_CREATOR' AND vr.saudi_voice = TRUE AND p.verified = TRUE)
                             THEN 'YES'
                         WHEN (p.entity_type = 'CONTENT_CREATOR' AND vr.saudi_voice = TRUE AND p.verified = FALSE)
                             THEN 'NO'
                         WHEN (p.entity_type = 'CONTENT_CREATOR' AND vr.saudi_voice = FALSE) THEN 'NO'
                         ELSE '' END
              FROM `team-club-dev`.verification_request vr
              WHERE vr.user_system_id = p.user_system_id
                AND vr.verification_status_id = 4
              ORDER BY vr.id DESC
              LIMIT 1)                                                                                       AS saudi_voice,
             (SELECT u.first_name
              FROM `user-dev`.user_attributes_mapping u
              WHERE u.user_id = p.verified_by)                                                               AS verified_by,
             p.verified                                                                                      AS verified,
             DATE_FORMAT(FROM_UNIXTIME(p.verification_date / 1000), '%d-%m-%Y')                              AS verification_date,
             verification_type.name                                                                          AS verification_type,
             (SELECT CASE
                         WHEN (p.verification_type_id = 3) THEN (SELECT cor.request_id
                                                                 FROM `team-club-dev`.verification_request vr
                                                                          LEFT JOIN `team-club-dev`.club_owner_request cor
                                                                                    on vr.id = cor.verification_request_id
                                                                 WHERE vr.user_system_id = p.user_system_id
                                                                   AND vr.verification_status_id = 4
                                                                 ORDER BY vr.id DESC
                                                                 LIMIT 1)
                         WHEN (p.verification_type_id = 2) THEN member_contract.request_id
                         ELSE '' END)                                                                        AS request_id,
             IF((contract.contract_id IS NOT NULL), 'YES', 'NO')                                             AS contract,
             contract.contract_request_id,
             contract.contract_type_en,
             contract.contract_type_ar,
             contract.full_name_en,
             contract.full_name_ar,
             contract.contract_period,
             contract.contract_from,
             contract.contract_to,
             contract.contract_salary,
             contract.contract_city_name_en,
             contract.contract_city_name_ar,
             contract.contract_status_en,
             contract.contract_status_ar,
             contract.contract_member_status_en,
             contract.contract_member_status_ar,
             contract.parent,
             contract.id_type_en,
             contract.id_type_ar,
             contract.id_number
      FROM `team-club-dev`.person p
               LEFT JOIN `user-dev`.profile_types profile_type ON profile_type.code = p.entity_type
               LEFT JOIN `user-dev`.profiles profile ON profile_type.id = profile.type_id
               LEFT JOIN `team-club-dev`.country country ON country.id = p.country_id
               LEFT JOIN `team-club-dev`.member_games member_game ON member_game.person_id = p.id
               LEFT JOIN `team-club-dev`.games game ON game.id = member_game.game_id
               LEFT JOIN `team-club-dev`.verification_type verification_type
                         ON p.verification_type_id = verification_type.id
               LEFT JOIN `team-club-dev`.member_contract member_contract
                         ON p.verification_contract = member_contract.system_id
               LEFT JOIN (SELECT member_contract.person_id                                                          AS person_id,
                                 member_contract.request_id                                                         AS contract_request_id,
                                 member_contract.id                                                                 AS contract_id,
                                 member_contract.contract_status                                                    AS contract_status,
                                 member_contract.name                                                               AS full_name_en,
                                 member_contract.name_ar                                                            AS full_name_ar,
                                 FLOOR(DATEDIFF(CURRENT_DATE, member_contract.birth_date) / 365)                    AS contract_age,
                                 FLOOR(DATEDIFF(member_contract.to_date, member_contract.from_date) / 30)           AS contract_period,
                                 FLOOR(DATEDIFF(CURRENT_DATE, member_contract.birth_date) / 365)                    AS age,
                                 DATE_FORMAT(member_contract.from_date, '%d-%m-%Y')                                 AS contract_from,
                                 DATE_FORMAT(member_contract.to_date, '%d-%m-%Y')                                   AS contract_to,
                                 member_contract.salary                                                             AS contract_salary,
                                 city.name                                                                          AS contract_city_name_en,
                                 city.name_ar                                                                       AS contract_city_name_ar,
                                 member_contract_status.name                                                        AS contract_status_en,
                                 member_contract_status.name_ar                                                     AS contract_status_ar,
                                 member_status.name                                                                 AS contract_member_status_en,
                                 member_status.name_ar                                                              AS contract_member_status_ar,
                                 IF((member_contract.is_saudi_eleague = TRUE), 'Saudi eleague',
                                    'General contract')                                                             AS contract_type_en,
                                 IF((member_contract.is_saudi_eleague = TRUE), 'الدورى السعودى',
                                    'عقد عام')                                                                      AS contract_type_ar,
                                 (SELECT IF((contract_age < 16), 'YES', 'NO'))                                      AS parent,
                                 (SELECT IF((contract_age < 16), parent_id.name, member_id.name))                   AS id_type_en,
                                 (SELECT IF((contract_age < 16), parent_id.name_ar, member_id.name_ar))             AS id_type_ar,
                                 (SELECT CASE
                                             WHEN (contract_age < 16 AND parent_id.code = 'NATIONAL_ID')
                                                 THEN member_contract.parent_national_id
                                             WHEN (contract_age < 16 AND parent_id.code = 'IQAMA')
                                                 THEN member_contract.parent_iqama_number
                                             WHEN (contract_age < 16 AND parent_id.code = 'PASSPORT')
                                                 THEN member_contract.parent_passport_number
                                             WHEN (contract_age >= 16 AND member_id.code = 'NATIONAL_ID')
                                                 THEN member_contract.national_id
                                             WHEN (contract_age >= 16 AND member_id.code = 'IQAMA')
                                                 THEN member_contract.iqama_number
                                             WHEN (contract_age >= 16 AND member_id.code = 'PASSPORT')
                                                 THEN member_contract.passport_number
                                             ELSE '' END)                                                           AS id_number,
                                 FROM_UNIXTIME(history.approved_history_at / 1000)                                  As approved_history_at,
                                 history.approved_history_request_id,
                                 history.reference,
                                 FROM_UNIXTIME(history.activated_history_at / 1000)                                 AS activated_history_at,
                                 history.activated_history_request_id,
                                 FROM_UNIXTIME(history.expired_history_at / 1000)                                   As expired_history_at,
                                 history.expired_history_request_id
                          From (SELECT person.id                                           AS history_person_id,
                                       CASE
                                           WHEN (approved_history.at IS NOT NULL AND approved_history.at <=
                                                                                     IFNULL(activated_history.at,
                                                                                            ROUND(UNIX_TIMESTAMP(CURTIME(4)) * 1000)) AND
                                                 activated_history.at <= IFNULL(expired_history.at,
                                                                                ROUND(UNIX_TIMESTAMP(CURTIME(4)) * 1000)) AND
                                                 approved_history.reference IS NULL)
                                               THEN approved_history.member_contract_id
                                           WHEN (approved_history.at IS NOT NULL AND approved_history.at <=
                                                                                     IFNULL(activated_history.at,
                                                                                            ROUND(UNIX_TIMESTAMP(CURTIME(4)) * 1000)) AND
                                                 activated_history.at <= IFNULL(expired_history.at,
                                                                                ROUND(UNIX_TIMESTAMP(CURTIME(4)) * 1000)) AND
                                                 approved_history.reference IS NOT NULL) THEN approved_history.reference
                                           WHEN (activated_history.at IS NOT NULL AND activated_history.at <=
                                                                                      IFNULL(approved_history.at,
                                                                                             ROUND(UNIX_TIMESTAMP(CURTIME(4)) * 1000)) AND
                                                 activated_history.at <=
                                                 IFNULL(expired_history.at, ROUND(UNIX_TIMESTAMP(CURTIME(4)) * 1000)))
                                               THEN activated_history.member_contract_id
                                           WHEN (expired_history.at IS NOT NULL AND expired_history.at <=
                                                                                    IFNULL(approved_history.at,
                                                                                           ROUND(UNIX_TIMESTAMP(CURTIME(4)) * 1000)) AND
                                                 expired_history.at <=
                                                 IFNULL(activated_history.at, ROUND(UNIX_TIMESTAMP(CURTIME(4)) * 1000)))
                                               THEN expired_history.member_contract_id END AS member_contract_id,
                                       COUNT(person.id),
                                       approved_history.at                                 AS approved_history_at,
                                       activated_history.at                                AS activated_history_at,
                                       expired_history.at                                  AS expired_history_at,
                                       approved_history.request_id                         AS approved_history_request_id,
                                       activated_history.request_id                        AS activated_history_request_id,
                                       expired_history.request_id                          AS expired_history_request_id,
                                       approved_history.reference                          AS reference
                                FROM `team-club-dev`.person
                                         LEFT JOIN (SELECT mc.person_id         AS person_id,
                                                           s.id                 AS status_id,
                                                           h.member_contract_id As member_contract_id,
                                                           mc.request_id        AS request_id,
                                                           h.at                 AS at
                                                    FROM `team-club-dev`.contract_history h
                                                             LEFT JOIN `team-club-dev`.member_contract mc ON h.member_contract_id = mc.id
                                                             LEFT JOIN `team-club-dev`.member_contract_status s ON mc.contract_status = s.id
                                                    WHERE h.member_contract_status = 'APPROVED'
                                                    ORDER BY mc.contract_status, at) As activated_history
                                                   ON person.id = activated_history.person_id AND
                                                      activated_history.status_id = 1
                                         LEFT JOIN (SELECT mc.person_id         AS person_id,
                                                           s.id                 AS status_id,
                                                           h.member_contract_id As member_contract_id,
                                                           mc.request_id        AS request_id,
                                                           h.at                 AS at
                                                    FROM `team-club-dev`.contract_history h
                                                             LEFT JOIN `team-club-dev`.member_contract mc ON h.member_contract_id = mc.id
                                                             LEFT JOIN `team-club-dev`.member_contract_status s ON mc.contract_status = s.id
                                                    WHERE h.member_contract_status = 'APPROVED'
                                                    ORDER BY mc.contract_status, at) As expired_history
                                                   ON person.id = expired_history.person_id AND expired_history.status_id = 2
                                         LEFT JOIN (SELECT mc.person_id         AS person_id,
                                                           (SELECT c.id
                                                            FROM `team-club-dev`.member_contract c
                                                            WHERE reference = mc.id
                                                              AND c.contract_status = 1
                                                            ORDER BY request_id DESC
                                                            LIMIT 1)            AS reference,
                                                           s.id                 AS status_id,
                                                           h.member_contract_id As member_contract_id,
                                                           mc.request_id        AS request_id,
                                                           h.at                 AS at
                                                    FROM `team-club-dev`.contract_history h
                                                             LEFT JOIN `team-club-dev`.member_contract mc ON h.member_contract_id = mc.id
                                                             LEFT JOIN `team-club-dev`.member_contract_status s ON mc.contract_status = s.id
                                                    WHERE h.member_contract_status = 'APPROVED'
                                                    ORDER BY mc.contract_status, at) As approved_history
                                                   ON person.id = approved_history.person_id AND
                                                      approved_history.status_id = 11
                                GROUP BY person.id) AS history
                                   LEFT JOIN `team-club-dev`.member_contract
                                             ON member_contract.id = history.member_contract_id
                                   LEFT JOIN `team-club-dev`.member_contract_status
                                             ON member_contract.contract_status = member_contract_status.id
                                   LEFT JOIN `team-club-dev`.member_status
                                             ON member_contract.member_status = member_status.id
                                   LEFT JOIN `team-club-dev`.id_type member_id
                                             ON member_contract.id_type_id = member_id.id
                                   LEFT JOIN `team-club-dev`.id_type parent_id
                                             ON member_contract.parent_id_type_id = parent_id.id
                                   LEFT JOIN `team-club-dev`.city city ON member_contract.city_id = city.id) AS contract
                         ON p.id = contract.person_id
      WHERE p.is_blocked = FALSE
        AND p.entity_type NOT IN ('CLUB_OWNER')) AS q;

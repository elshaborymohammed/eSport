SELECT DISTINCT member_id,
                email,
                verified_by,
                verified,
                verification_date,
                verification_type,
                request_id,


                contract_id,
                contract_status,
                contract_name_en,
                contract_name_ar,
                contract_period,
                contract_age,
                contract_from,
                contract_to,
                contract_salary,
                contract_city_name_en,
                contract_city_name_ar,
                contract_status_en,
                contract_status_ar,
                contract_member_status_en,
                contract_member_status_ar,
                parent,
                id_type_en,
                id_type_ar,
                id_number
FROM (SELECT p.member_id                                                        AS member_id,
             p.name                                                             AS name,
             profile.name                                                       AS role_en,
             profile.name_ar                                                    AS role_ar,
             p.email                                                            AS email,
             CONCAT(p.country_code, p.mobile_number)                            AS mobile,
             (CASE
                  WHEN p.gender = 'MALE' THEN 'Male'
                  WHEN p.gender = 'FEMALE' THEN 'Female'
                  ELSE 'N/A' END)                                               AS gender_en,
             (CASE
                  WHEN p.gender = 'MALE' THEN 'ذكر'
                  WHEN p.gender = 'FEMALE' THEN 'أنثى'
                  ELSE 'N/A' END)                                               AS gender_ar,
             DATE_FORMAT(p.birth_date, '%d-%m-%Y')                              AS date_of_birth,
             FLOOR(DATEDIFF(CURDATE(), p.birth_date) / 365)                     AS age,
             DATE_FORMAT(p.created_at, '%d-%m-%Y')                              AS joined_date,
             CONCAT('https://lcoal.saudiesports.sa/profile/member/', p.code)    AS profile_link,
             country.nationality                                                AS nationality_en,
             country.nationality_ar                                             AS nationality_ar,
             (SELECT COUNT(tm.id)
              FROM `team-club-qa`.team_member tm
                       LEFT JOIN `team-club-qa`.team t ON t.id = tm.team_id
              WHERE t.club_id IS NULL
                AND tm.account_id = p.id)                                       AS clans,
             (SELECT GROUP_CONCAT(t.name)
              FROM `team-club-qa`.team_member tm
                       LEFT JOIN `team-club-qa`.team t ON t.id = tm.team_id
              WHERE t.club_id IS NULL
                AND account_id = p.id)                                          AS clans_names_en,
             (SELECT GROUP_CONCAT(t.name_ar)
              FROM `team-club-qa`.team_member tm
                       LEFT JOIN `team-club-qa`.team t ON t.id = tm.team_id
              WHERE t.club_id IS NULL
                AND account_id = p.id)                                          AS clans_names_ar,
             (SELECT GROUP_CONCAT(t.name)
              FROM `team-club-qa`.team_member tm
                       LEFT JOIN `team-club-qa`.team t ON t.id = tm.team_id
              WHERE t.club_id IS NOT NULL
                AND account_id = p.id)                                          AS teams_names_en,
             (SELECT GROUP_CONCAT(t.name_ar)
              FROM `team-club-qa`.team_member tm
                       LEFT JOIN `team-club-qa`.team t ON t.id = tm.team_id
              WHERE t.club_id IS NOT NULL
                AND account_id = p.id)                                          AS teams_names_ar,
             (SELECT COUNT(DISTINCT cq.club_id)
              FROM (SELECT c.id AS club_id
                    FROM `team-club-qa`.team_member tm
                             LEFT JOIN `team-club-qa`.team t ON t.id = tm.team_id
                             LEFT JOIN `team-club-qa`.club c on c.id = t.club_id
                    WHERE t.club_id IS NOT NULL
                      AND t.type = 'CLUB_TEAM'
                      AND c.is_blocked = FALSE
                      AND tm.account_id = p.id
                    UNION
                    (SELECT club_admins.club_id AS club_id
                     FROM `team-club-qa`.club_admins
                              LEFT JOIN `team-club-qa`.club c on c.id = club_admins.club_id
                     WHERE c.is_blocked = FALSE
                       AND club_admins.account_id = p.id)
                    UNION
                    (SELECT club_content_creator.club_id AS club_id
                     FROM `team-club-qa`.club_content_creator
                              LEFT JOIN `team-club-qa`.club c on c.id = club_content_creator.club_id
                     WHERE c.is_blocked = FALSE
                       AND club_content_creator.account_id = p.id)) AS cq)      AS clubs,
             (SELECT GROUP_CONCAT(DISTINCT cq.club_name)
              FROM (SELECT c.club_name AS club_name
                    FROM `team-club-qa`.team_member tm
                             LEFT JOIN `team-club-qa`.team t ON t.id = tm.team_id
                             LEFT JOIN `team-club-qa`.club c on c.id = t.club_id
                    WHERE t.club_id IS NOT NULL
                      AND t.type = 'CLUB_TEAM'
                      AND c.is_blocked = FALSE
                      AND tm.account_id = p.id
                    UNION
                    (SELECT c.club_name AS club_name
                     FROM `team-club-qa`.club_admins
                              LEFT JOIN `team-club-qa`.club c on c.id = club_admins.club_id
                     WHERE c.is_blocked = FALSE
                       AND club_admins.account_id = p.id)
                    UNION
                    (SELECT c.club_name AS club_name
                     FROM `team-club-qa`.club_content_creator
                              LEFT JOIN `team-club-qa`.club c on c.id = club_content_creator.club_id
                     WHERE c.is_blocked = FALSE
                       AND club_content_creator.account_id = p.id)) AS cq)      AS clubs_names_en,
             (SELECT GROUP_CONCAT(DISTINCT cq.club_name_ar)
              FROM (SELECT c.club_name_ar AS club_name_ar
                    FROM `team-club-qa`.team_member tm
                             LEFT JOIN `team-club-qa`.team t ON t.id = tm.team_id
                             LEFT JOIN `team-club-qa`.club c on c.id = t.club_id
                    WHERE t.club_id IS NOT NULL
                      AND t.type = 'CLUB_TEAM'
                      AND c.is_blocked = FALSE
                      AND tm.account_id = p.id
                    UNION
                    (SELECT c.club_name_ar AS club_name_ar
                     FROM `team-club-qa`.club_admins
                              LEFT JOIN `team-club-qa`.club c on c.id = club_admins.club_id
                     WHERE c.is_blocked = FALSE
                       AND club_admins.account_id = p.id)
                    UNION
                    (SELECT c.club_name_ar AS club_name_ar
                     FROM `team-club-qa`.club_content_creator
                              LEFT JOIN `team-club-qa`.club c on c.id = club_content_creator.club_id
                     WHERE c.is_blocked = FALSE
                       AND club_content_creator.account_id = p.id)) AS cq)      AS clubs_names_ar,
             game.name                                                          AS game_name,
             (SELECT COUNT(g.id)
              FROM `team-club-qa`.member_games mg
                       LEFT JOIN `team-club-qa`.games g ON g.id = mg.game_id
              WHERE mg.person_id = p.id)                                        AS games,
             (SELECT IF((mg.game_id = game.id), 'YES', 'NO')
              FROM `team-club-qa`.member_games mg
              WHERE mg.person_id = p.id
              ORDER BY mg.game_order ASC
              LIMIT 1)                                                          AS favourite,
             (SELECT member_game_attributes.value
              FROM `team-club-qa`.attributes
                       LEFT JOIN `team-club-qa`.game_attributes ON attributes.id = game_attributes.attribute_id
                       LEFT JOIN `team-club-qa`.member_game_attributes
                                 ON game_attributes.id = member_game_attributes.game_attribute_id
                       LEFT JOIN `team-club-qa`.member_game_attr_values
                                 on member_game_attributes.id = member_game_attr_values.member_game_id
              WHERE attributes.code = 'in_game_name'
                AND member_game_attributes.member_game_id = member_game.id)     AS in_game_name,
             (SELECT ifnull(member_game_attributes.value, game_attribute_values.name)
              FROM `team-club-qa`.member_games mg
                       LEFT JOIN `team-club-qa`.games ON mg.game_id = games.id
                       LEFT JOIN `team-club-qa`.member_game_attributes ON mg.id = member_game_attributes.member_game_id
                       LEFT JOIN `team-club-qa`.game_attributes
                                 ON game_attributes.id = member_game_attributes.game_attribute_id
                       LEFT JOIN `team-club-qa`.member_game_attr_values
                                 ON member_game_attributes.id = member_game_attr_values.member_game_id
                       LEFT JOIN `team-club-qa`.game_attribute_values
                                 ON game_attribute_values.id = member_game_attr_values.game_attribute_value_id
              WHERE game_attributes.attribute_id = 7
                AND mg.id = member_game.id)                                     AS current_rank,
             (SELECT CASE
                         WHEN (p.entity_type = 'CONTENT_CREATOR' AND vr.saudi_voice = TRUE AND p.verified = TRUE)
                             THEN 'YES'
                         WHEN (p.entity_type = 'CONTENT_CREATOR' AND vr.saudi_voice = TRUE AND p.verified = FALSE)
                             THEN 'NO'
                         WHEN (p.entity_type = 'CONTENT_CREATOR' AND vr.saudi_voice = FALSE) THEN 'NO'
                         ELSE '' END
              FROM `team-club-qa`.verification_request vr
              WHERE vr.user_system_id = p.user_system_id
                AND vr.verification_status_id = 4
              ORDER BY vr.id DESC
              LIMIT 1)                                                          AS saudi_voice,
             (SELECT u.first_name
              FROM `user-qa`.user_attributes_mapping u
              WHERE u.user_id = p.verified_by)                                  AS verified_by,
             p.verified                                                         AS verified,
             DATE_FORMAT(FROM_UNIXTIME(p.verification_date / 1000), '%d-%m-%Y') AS verification_date,
             verification_type.name                                             AS verification_type,
             (SELECT CASE
                         WHEN (p.verification_type_id = 3)
                             THEN (SELECT cor.request_id
                                   FROM `team-club-qa`.verification_request vr
                                            LEFT JOIN `team-club-qa`.club_owner_request cor
                                                      on vr.id = cor.verification_request_id
                                   WHERE vr.user_system_id = p.user_system_id
                                     AND vr.verification_status_id = 4
                                   ORDER BY vr.id DESC
                                   LIMIT 1)
                         WHEN (p.verification_type_id = 2)
                             THEN member_contract.request_id
                         ELSE '' END)                                           AS request_id,
             contract.contract_id,
             contract.contract_status,
             contract.contract_name_en,
             contract.contract_name_ar,
             contract.contract_period,
             contract.contract_age,
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

      FROM `team-club-qa`.person p
               LEFT JOIN `user-qa`.profile_types profile_type ON profile_type.code = p.entity_type
               LEFT JOIN `user-qa`.profiles profile ON profile_type.id = profile.type_id
               LEFT JOIN `team-club-qa`.country country ON country.id = p.country_id
               LEFT JOIN `team-club-qa`.member_games member_game ON member_game.person_id = p.id
               LEFT JOIN `team-club-qa`.games game ON game.id = member_game.game_id
               LEFT JOIN `team-club-qa`.verification_type verification_type
                         on p.verification_type_id = verification_type.id
               LEFT JOIN `team-club-qa`.member_contract member_contract
                         on p.verification_contract = member_contract.system_id
               LEFT JOIN () AS history
                         ON history.history_person_id = member_contract.person_id
                             AND history.history_member_contract_id = member_contract.id
      WHERE member_contract.contract_status IN (1, 2)
        AND member_contract.is_current_contract = 1) AS contract ON p.id = contract.contract_person_id


WHERE p.is_blocked = FALSE
  AND p.entity_type NOT IN ('CLUB_OWNER')
  AND verified = true) AS q;
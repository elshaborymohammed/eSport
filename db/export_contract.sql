-- Contract
SELECT member_contract.person_id                                                          AS person_id,
       member_contract.request_id                                                         AS contract_request_id,
       member_contract.id                                                                 AS contract_id,
       member_contract.contract_status                                                    AS contract_status,
       member_contract.name                                                               AS full_name_en,
       member_contract.name_ar                                                            AS full_name_ar,
       FLOOR(DATEDIFF(member_contract.to_date, member_contract.from_date) / 30)           AS contract_period,
       FLOOR(DATEDIFF(CURRENT_DATE, member_contract.birth_date) / 365)                    AS contract_age,
       DATE_FORMAT(member_contract.from_date, '%d-%m-%Y')                                 AS contract_from,
       DATE_FORMAT(member_contract.to_date, '%d-%m-%Y')                                   AS contract_to,
       member_contract.salary                                                             AS contract_salary,
       city.name                                                                          AS contract_city_name_en,
       city.name_ar                                                                       AS contract_city_name_ar,
       member_contract_status.name                                                        AS contract_status_en,
       member_contract_status.name_ar                                                     AS contract_status_ar,
       member_status.name                                                                 AS contract_member_status_en,
       member_status.name_ar                                                              AS contract_member_status_ar,
       IF((member_contract.is_saudi_eleague = TRUE), 'Saudi eleague', 'General contract') AS contract_type_en,
       IF((member_contract.is_saudi_eleague = TRUE), 'الدورى السعودى', 'عقد عام')         AS contract_type_ar,
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
                   ELSE ''
                   END)                                                                   AS id_number,
       FROM_UNIXTIME(history.approved_history_at / 1000)                                  As approved_history_at,
       history.approved_history_request_id,
       history.reference,
       FROM_UNIXTIME(history.activated_history_at / 1000)                                 AS activated_history_at,
       history.activated_history_request_id,
       FROM_UNIXTIME(history.expired_history_at / 1000)                                   As expired_history_at,
       history.expired_history_request_id
From (SELECT person.id                    AS history_person_id,
             CASE
                 WHEN (
                     approved_history.at IS NOT NULL AND
                     approved_history.at <=
                     IFNULL(activated_history.at, ROUND(UNIX_TIMESTAMP(CURTIME(4)) * 1000))
                         #                          AND
#                      activated_history.at <=
#                      IFNULL(expired_history.at, ROUND(UNIX_TIMESTAMP(CURTIME(4)) * 1000))
                         AND approved_history.reference IS NULL
                     )
                     THEN approved_history.member_contract_id

                 WHEN (
                     approved_history.at IS NOT NULL AND
                     approved_history.at <=
                     IFNULL(activated_history.at, ROUND(UNIX_TIMESTAMP(CURTIME(4)) * 1000))
                         #                          AND
#                      activated_history.at <=
#                      IFNULL(expired_history.at, ROUND(UNIX_TIMESTAMP(CURTIME(4)) * 1000))
                         AND approved_history.reference IS NOT NULL
                     )
                     THEN approved_history.reference

                 WHEN (
                     activated_history.at IS NOT NULL AND
                     activated_history.at <=
                     IFNULL(approved_history.at, ROUND(UNIX_TIMESTAMP(CURTIME(4)) * 1000))
#                          AND
#                      activated_history.at <=
#                      IFNULL(expired_history.at, ROUND(UNIX_TIMESTAMP(CURTIME(4)) * 1000))
                     )
                     THEN activated_history.member_contract_id

                 WHEN (
                     approved_history.at IS NULL
                         AND
                     activated_history.at IS NULL
                         AND
                     expired_history.at IS NOT NULL
                     )
                     THEN expired_history.member_contract_id
                 END                      AS member_contract_id,
             COUNT(person.id),
             approved_history.at          AS approved_history_at,
             activated_history.at         AS activated_history_at,
             expired_history.at           AS expired_history_at,
             approved_history.request_id  AS approved_history_request_id,
             activated_history.request_id AS activated_history_request_id,
             expired_history.request_id   AS expired_history_request_id,
             approved_history.reference   AS reference
      FROM `team-club`.person
               LEFT JOIN
           (SELECT mc.person_id         AS person_id,
                   s.id                 AS status_id,
                   h.member_contract_id As member_contract_id,
                   mc.request_id        AS request_id,
                   h.at                 AS at
            FROM `team-club`.contract_history h
                     LEFT JOIN `team-club`.member_contract mc ON h.member_contract_id = mc.id
                     LEFT JOIN `team-club`.member_contract_status s ON mc.contract_status = s.id
            WHERE h.member_contract_status = 'APPROVED'
            ORDER BY mc.contract_status, at) As activated_history
           ON person.id = activated_history.person_id
               AND activated_history.status_id = 1

               LEFT JOIN
           (SELECT mc.person_id         AS person_id,
                   s.id                 AS status_id,
                   h.member_contract_id As member_contract_id,
                   mc.request_id        AS request_id,
                   h.at                 AS at
            FROM `team-club`.contract_history h
                     LEFT JOIN `team-club`.member_contract mc ON h.member_contract_id = mc.id
                     LEFT JOIN `team-club`.member_contract_status s ON mc.contract_status = s.id
            WHERE h.member_contract_status = 'APPROVED'
            ORDER BY mc.contract_status, at) As expired_history
           ON person.id = expired_history.person_id
               AND expired_history.status_id = 2

               LEFT JOIN
           (SELECT mc.person_id         AS person_id,
                   (SELECT c.id
                    FROM `team-club`.member_contract c
                    WHERE reference = mc.id
                      AND c.contract_status = 1
                    ORDER BY request_id DESC
                    LIMIT 1)            AS reference,
                   s.id                 AS status_id,
                   h.member_contract_id As member_contract_id,
                   mc.request_id        AS request_id,
                   h.at                 AS at
            FROM `team-club`.contract_history h
                     LEFT JOIN `team-club`.member_contract mc ON h.member_contract_id = mc.id
                     LEFT JOIN `team-club`.member_contract_status s ON mc.contract_status = s.id
            WHERE h.member_contract_status = 'APPROVED'
            ORDER BY mc.contract_status, at) As approved_history
           ON person.id = approved_history.person_id
               AND approved_history.status_id = 11
      GROUP BY person.id)
         AS history
         LEFT JOIN `team-club`.member_contract ON member_contract.id = history.member_contract_id
         LEFT JOIN `team-club`.member_contract_status
                   ON member_contract.contract_status = member_contract_status.id
         LEFT JOIN `team-club`.member_status ON member_contract.member_status = member_status.id
         LEFT JOIN `team-club`.id_type member_id ON member_contract.id_type_id = member_id.id
         LEFT JOIN `team-club`.id_type parent_id ON member_contract.parent_id_type_id = parent_id.id
         LEFT JOIN `team-club`.city city ON member_contract.city_id = city.id
WHERE person_id IN (161, 162, 163, 164, 165, 166, 167, 168);
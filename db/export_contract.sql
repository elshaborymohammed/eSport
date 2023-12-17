SET GLOBAL sql_mode = (SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', ''));
SET SESSION sql_mode = (SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', ''));
# SELECT @@GLOBAL.sql_mode;
# SELECT @@SESSION.sql_mode;

-- Contract
SELECT member_contract.person_id                                                AS person_id,
       member_contract.id                                                       AS contract_id,
       member_contract.contract_status                                          AS contract_status,
       member_contract.name                                                     AS contract_name_en,
       member_contract.name_ar                                                  AS contract_name_ar,
       FLOOR(DATEDIFF(member_contract.to_date, member_contract.from_date) / 30) AS contract_period,
       FLOOR(DATEDIFF(CURRENT_DATE, member_contract.birth_date) / 365)          AS age,
       DATE_FORMAT(member_contract.from_date, '%d-%m-%Y')                       AS contract_from,
       DATE_FORMAT(member_contract.to_date, '%d-%m-%Y')                         AS contract_to,
       member_contract.salary                                                   AS contract_salary,
       city.name                                                                AS contract_city_name_en,
       city.name_ar                                                             AS contract_city_name_ar,
       member_contract_status.name                                              AS contract_status_en,
       member_contract_status.name_ar                                           AS contract_status_ar,
       member_status.name                                                       AS contract_member_status_en,
       member_status.name_ar                                                    AS contract_member_status_ar,
       member_contract.created_at,
       member_contract.updated_at,
       (SELECT CASE
                   WHEN (age < 16)
                       THEN 'YES'
                   ELSE 'NO'
                   END)                                                         AS parent,
       (SELECT CASE
                   WHEN (age < 16)
                       THEN parent_id.name
                   ELSE member_id.name
                   END)                                                         AS id_type_en,
       (SELECT CASE
                   WHEN (age < 16)
                       THEN parent_id.name_ar
                   ELSE member_id.name_ar
                   END)                                                         AS id_type_ar,
       (SELECT CASE
                   WHEN (age < 16 AND parent_id.code = 'NATIONAL_ID')
                       THEN member_contract.parent_national_id
                   WHEN (age < 16 AND parent_id.code = 'IQAMA')
                       THEN member_contract.parent_iqama_number
                   WHEN (age < 16 AND parent_id.code = 'PASSPORT')
                       THEN member_contract.parent_passport_number
                   WHEN (age >= 16 AND member_id.code = 'NATIONAL_ID')
                       THEN member_contract.national_id
                   WHEN (age >= 16 AND member_id.code = 'IQAMA')
                       THEN member_contract.iqama_number
                   WHEN (age >= 16 AND member_id.code = 'PASSPORT')
                       THEN member_contract.passport_number
                   ELSE ''
                   END)                                                         AS id_number
#        DATE_FORMAT(FROM_UNIXTIME(history.at / 1000), '%d-%m-%Y')                AS approved_date

From `team-club-qa`.member_contract
         LEFT JOIN `team-club-qa`.member_contract_status
                   ON member_contract.contract_status = member_contract_status.id
         LEFT JOIN `team-club-qa`.member_status ON member_contract.member_status = member_status.id
         LEFT JOIN `team-club-qa`.id_type member_id ON member_contract.id_type_id = member_id.id
         LEFT JOIN `team-club-qa`.id_type parent_id ON member_contract.parent_id_type_id = parent_id.id
         LEFT JOIN `team-club-qa`.city city ON member_contract.city_id = city.id
#          JOIN (SELECT member_contract_id, MIN(at) at
#                FROM `team-club-qa`.contract_history
#                WHERE contract_history.member_contract_status = 'APPROVED'
#                GROUP BY member_contract_id) AS history ON member_contract.id = history.member_contract_id
WHERE member_contract.contract_status IN (1, 2)
  AND member_contract.is_current_contract = 1
  AND person_id = 156
  AND member_contract.id IN (SELECT history.member_contract_id
                             FROM (SELECT member_contract_id, MIN(at) at
                                   FROM `team-club-qa`.contract_history
                                   WHERE contract_history.member_contract_status = 'APPROVED'
                                   GROUP BY contract_history.member_contract_id
                                  ) AS history)
ORDER BY member_contract.contract_status
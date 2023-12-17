SELECT *
FROM (SELECT mc1.person_id AS person_id, member_contract_id, at
      FROM `team-club-qa`.contract_history
               LEFT JOIN `team-club-qa`.member_contract mc1 ON contract_history.member_contract_id = mc1.id
      WHERE contract_history.member_contract_status = 'APPROVED'
#   AND contract_history.member_contract_id IN (145, 2)
        AND mc1.person_id = 156
      ORDER BY mc1.contract_status, at) As his
group by his.person_id
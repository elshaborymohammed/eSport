DELETE
FROM `team-club-qa`.contract_history
WHERE contract_history.member_contract_id = :?1;

DELETE
FROM `team-club-qa`.member_contract
WHERE id = :?1;
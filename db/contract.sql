-- Verification
SELECT r.request_id, v.name, v.system_id, vs.code, rs.code, rt.code
FROM `team-club-qa`.club_owner_request r
         LEFT JOIN `team-club-qa`.verification_request v ON v.id = r.verification_request_id
         LEFT JOIN `team-club-qa`.request_status rs ON r.request_status_id = rs.id
         LEFT JOIN `team-club-qa`.verification_status vs ON v.verification_status_id = vs.id
         LEFT JOIN `team-club-qa`.request_type rt ON r.request_type_id = rt.id
WHERE r.id = (SELECT mc1.id FROM `team-club-qa`.club_owner_request mc1 ORDER BY mc1.id DESC LIMIT 1);


SELECT *
FROM `team-club-qa`.club_owner_request
WHERE system_id = 'a7901e11-78f1-469d-b3b7-48f573601384';
SELECT *
FROM `team-club-qa`.verification_request
WHERE system_id = 'a7901e11-78f1-469d-b3b7-48f573601384';


-- Member Contract Changes
SELECT ch.id, ch.new_val, ch.old_val, ch.field_id, mc.system_id
FROM `team-club-qa`.update_request_changes ch
         LEFT JOIN `team-club-qa`.member_contract mc on mc.id = ch.member_contract_id
WHERE mc.id = (SELECT mc1.id FROM `team-club-qa`.member_contract mc1 ORDER BY mc1.id DESC LIMIT 1);

-- Member Contract
SELECT mc1.id,
       mc1.system_id,
       cor.request_id,
       mc1.request_id,
       ms.code,
       s.code,
       mc1.country_id,
       mc1.city_id,
       mc1.reference,
       mc1.name,
       mc1.name_ar,
       mc1.national_id
FROM `team-club-qa`.member_contract mc1
         LEFT JOIN `team-club-qa`.club_owner_request cor on cor.id = mc1.parent_request_id
         LEFT OUTER JOIN `team-club-qa`.member_status ms ON mc1.member_status = ms.id
         LEFT OUTER JOIN `team-club-qa`.member_contract_status s ON mc1.contract_status = s.id
ORDER BY mc1.id DESC
LIMIT 1;


SELECT r.request_id, rt.code, rs.code, vs.code, vt.code, vr.id
FROM `team-club-qa`.club_owner_request r
         LEFT JOIN `team-club-qa`.request_type rt ON r.request_type_id = rt.id
         LEFT JOIN `team-club-qa`.request_status rs ON r.request_status_id = rs.id
         LEFT JOIN `team-club-qa`.verification_request vr ON vr.id = r.verification_request_id
         LEFT JOIN `team-club-qa`.verification_status vs ON vr.verification_status_id = vs.id
         LEFT JOIN `team-club-qa`.verification_status vt ON vr.verification_type_id = vt.id
WHERE request_id IN ('RQ000001448')
ORDER BY r.updated_at;


SELECT * FROM `team-club-qa`.person WHERE user_system_id = '2dffb849-6506-4894-b259-44b87048784b';

-- Verification Request Changes
SELECT ch.id, ch.new_val, ch.old_val, ch.field_id, mc.system_id
FROM `team-club`.update_request_changes ch
         LEFT JOIN `team-club`.verification_request mc on mc.id = ch.verification_request_id
WHERE mc.id = (SELECT mc1.id FROM `team-club`.verification_request mc1 ORDER BY mc1.id DESC LIMIT 1);
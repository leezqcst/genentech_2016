SELECT patient_id, COUNT(DISTINCT prescription_practitioner_id) AS patient_id_diff_prescription_practitioner_count
FROM prescription_feats
GROUP BY patient_id;
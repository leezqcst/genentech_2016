SELECT patient_id, FEATURES_LIST_COMMA_SEPARATED FROM
(SELECT patient_id, FEATURES_LIST_COMMA_SEPARATED
FROM
(SELECT t1.patient_id, T1_FEATURES_COMMA_SEPARATED, OPTIONAL_DATE_FTRL3 FROM
((SELECT patient_id, FEATURES_LIST_COMMA_SEPARATED, OPTIONAL_DATE_FTRL3 FROM FEATURE_TABLE_NAME) t1
INNER JOIN
(SELECT patient_id FROM patients_test2) t2
ON t1.patient_id = t2.patient_id))
GROUP BY patient_id, FEATURES_LIST_COMMA_SEPARATED, OPTIONAL_DATE_FTRL3
ORDER BY patient_id, OPTIONAL_DATE_FTRL3);

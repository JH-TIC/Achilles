-- 431	Proportion of people with at least one condition_occurrence record outside a valid observation period
--
-- stratum_1:   Proportion
-- stratum_2:   Number of people with a record outside a valid observation period (numerator)
-- stratum_3:   Number of people in condition_occurrence (denominator)
-- count_value: Flag (0 or 1) indicating whether any such records exist
--

SELECT 
	431 AS analysis_id,
	CASE WHEN co.person_count != 0 THEN
		CAST(CAST(1.0*op.person_count/co.person_count AS FLOAT) AS VARCHAR(255)) 
	ELSE 
		CAST(NULL AS VARCHAR(255)) 
	END AS stratum_1, 
	CAST(op.person_count AS VARCHAR(255)) AS stratum_2,
	CAST(co.person_count AS VARCHAR(255)) AS stratum_3,
	CAST(NULL AS VARCHAR(255)) AS stratum_4,
	CAST(NULL AS VARCHAR(255)) AS stratum_5,
	SIGN(op.person_count) AS count_value
INTO 
	@scratchDatabaseSchema@schemaDelim@tempAchillesPrefix_431
FROM 
	(
SELECT 
	COUNT_BIG(DISTINCT co.person_id) AS person_count
FROM 
	@cdmDatabaseSchema.condition_occurrence co
LEFT JOIN 
	@cdmDatabaseSchema.observation_period op 
ON 
	co.person_id = op.person_id
AND 
	co.condition_start_date >= op.observation_period_start_date
AND 
	co.condition_start_date <= op.observation_period_end_date
WHERE
	op.person_id IS NULL
) op
CROSS JOIN 
	(
SELECT
	COUNT_BIG(DISTINCT person_id) person_count
FROM
	@cdmDatabaseSchema.condition_occurrence
) co
;

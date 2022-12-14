SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assistance_requests ON student_id = students.id
GROUP BY cohort
ORDER BY total_duration;
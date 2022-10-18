SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, assistance_requests.completed_at - assistance_requests.started_at as duration
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
JOIN students ON student_id = student_id
JOIN teachers ON teacher_id = teachers.id
ORDER BY duration;
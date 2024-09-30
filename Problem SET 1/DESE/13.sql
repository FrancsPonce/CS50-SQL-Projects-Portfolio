SELECT graduation_rates.dropped, schools.name, expenditures.per_pupil_expenditure FROM "districts"
JOIN schools ON schools.district_id = districts.id
JOIN expenditures ON expenditures.district_id = districts.id
JOIN graduation_rates ON graduation_rates.school_id = schools.id

WHERE per_pupil_expenditure >= (SELECT AVG(per_pupil_expenditure) FROM expenditures) AND dropped >= (SELECT AVG(dropped) FROM graduation_rates)
ORDER BY graduation_rates.dropped DESC
LIMIT 10;

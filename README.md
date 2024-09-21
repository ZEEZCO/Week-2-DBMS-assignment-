# Week-2-DBMS-assignment-

-- 1
-- query to retrieve the first_name, last_name and date_of_birth of all patients.

SELECT first_name, last_name, date_of_birth FROM table_one;

-- query to retrieve the provider_id, first_name and provider_specialty from the providers table.

SELECT provider_id, first_name,provider_specialty FROM providers;

-- 2
-- query to retrieve all patients whose first names start with "Ab".

SELECT * FROM table_one,
WHERE patient_id LIKE 'Ab';

-- query to retrieve all providers whose specialties end with the letter "y"

SELECT * FROM providers,
WHERE provider_specialty LIKE (%y);


-- 3
-- query to find all patients born after 1st January 1980.

SELECT * FROM patient_id,
WHERE date_of_birth > '01-01-1980';

-- query to retrieve visits where the acuity level is 2 or higher.

SELECT * FROM visit_id
WHERE acuity LIKE ('2')


-- 4
-- query to find patients who speak Spanish.

SELECT * FROM patient_id,
WHERE language LIKE ('Spanish');

-- query to retrieve visits where the reason is "Migraine" and the disposition is "Admitted".

SELECT * FROM visit_id,
WHERE reason_for_visit LIKE ('Migraine'),
WHERE ed_disposition LIKE ('Admitted');

-- query to find patients born between 1975 and 1980.

SELECT * FROM patient_id,
WHERE date_of_birth BETWEEN '1975-01-01' AND '1980-01-01';


-- 5
-- query to retrieve patient names and sort them in alphabetical order by last name.

SELECT * FROM patient_id,
ORDER BY last_name ASC;

-- query to list all visits sorted by the date of the visit, starting from the most recent.

SELECT * FROM visit_id,
ORDER BY date_0f_visit DESC;


-- 6
-- query to retrieve all admissions where the primary diagnosis is "Stroke" and the discharge disposition is "Home".

SELECT * FROM admission_id,
WHERE primary_diagnosis LIKE ('stroke'),
WHERE discharge_disposition LIKE ('Home')

-- query to find providers who joined after 1995 and specialize in either Pediatrics or Cardiology.

SELECT * FROM provider_id,
WHERE date_joined BETWEEN '01-01-1995' AND '01-01-1995',
WHERE provider_specialty LIKE ('Pediatrics') OR ('Cardiology')

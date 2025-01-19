-- 1
SELECT first_name, last_name, date_of_birth FROM patients;
SELECT provider_id, first_name, provider_specialty FROM providers;

-- 2
SELECT * FROM patients WHERE frst_name LIKE "Ab%";
SELECT * FROM providers WHERE provider_specialty LIKE "%y";

-- 3
SELECT * FROM patients WHERE date_of_birth >= "1980-01-01";
SELECT * FROM ed_visits WHERE acuity >= "2";

-- 4
SELECT * FROM patients WHERE language = "spanish";
SELECT * FROM ed_visits WHERE reason_for_visit = "Migraine";
SELECT * FROM patients WHERE date_of_birth() BETWEEN "1975" AND "1980" ;

-- 5
SELECT * FROM patients ORDER BY last_name ASC;
SELECT * FROM visits ORDER BY date_of_visit DESC;

-- 6
SELECT * FROM admissions, discharges WHERE primary_diagnosis = 'Stroke' AND discharge_disposition = 'Home';
SELECT * FROM providers WHERE date_joined >"1995-01-01" provider_specialty= "Pediatrics", "Cardiologist";


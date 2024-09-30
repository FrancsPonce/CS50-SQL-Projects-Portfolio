
-- Find patients with specific a secretary

SELECT *
FROM "Patient"
WHERE "id" IN (
    SELECT "patient_id"
    FROM "consultation"
    WHERE "secretary_id" = 1
);

-- Find medications and their last delivery dates
SELECT "Name", "Expiration_date", "Medication_delivery_date"
FROM "Medications"
WHERE "id" IN (
    SELECT "Drug_delivered_id"
    FROM "Medication_delivery"
    WHERE "Medication_delivery_date" = (
        SELECT MAX("Medication_delivery_date")
        FROM "Medication_delivery"
        WHERE "Drug_delivered_id" = "Medications"."id"
    )
);

-- Get doctors who have evaluated a specific patient

SELECT "Name", "Last_name", "Email"
FROM "Doctors"
WHERE "id" IN (
    SELECT "Doctor_id"
    FROM "Medical_evaluation"
    WHERE "Patient_id" = 1
);



-- Insert data into the Patient table
INSERT INTO "Patient" ("id", "Name", "Last_name", "Gender", "Email", "Age", "Birth_date")
VALUES (1, 'John', 'Doe', 'Male', 'john.doe@example.com', 30, '1994-05-15');

-- Insert data into the Doctors table
INSERT INTO "Doctors" ("id", "Name", "Last_name", "Gender", "Email", "Start_date", "Age", "Birth_date")
VALUES (1, 'Jane', 'Smith', 'Female', 'jane.smith@example.com', '2023-01-01', 45, '1979-07-22');

-- Insert data into the Nurse table
INSERT INTO "Nurse" ("id", "Name", "Last_name", "Gender", "Email", "Start_date", "Age", "Birth_date")
VALUES (1, 'Emily', 'Johnson', 'Female', 'emily.johnson@example.com', '2022-06-15', 28, '1996-03-10');

-- Insert data into the Pharmaceutical_professionals table
INSERT INTO "Pharmaceutical_professionals" ("id", "Name", "Last_name", "Gender", "Email", "Start_date", "Age", "Birth_date")
VALUES (1, 'Robert', 'Brown', 'Male', 'robert.brown@example.com', '2021-11-01', 35, '1988-09-20');

-- Insert data into the Secretary table
INSERT INTO "Secretary" ("id", "Name", "Last_name", "Gender", "Email", "Start_date", "Age", "Birth_date")
VALUES (1, 'Alice', 'Davis', 'Female', 'alice.davis@example.com', '2020-04-01', 40, '1983-12-05');

-- Insert data into the Medications table
INSERT INTO "Medications" ("id", "Name", "Manufacture_date", "Expiration_date", "Pharmaceutical_company", "Description")
VALUES (1, 'Aspirin', '2023-01-10', '2025-01-10', 'PharmaCo', 'Pain relief medication');

-- Insert data into the consultation table
INSERT INTO "consultation" ("patient_id", "secretary_id", "patient_admission_date")
VALUES (1, 1, '2024-08-01 09:00:00');

-- Insert data into the Emergency_Vitalsigns table
INSERT INTO "Emergency_Vitalsigns" ("Patient_id", "Nurse_id", "Patient_condition")
VALUES (1, 1, 'Stable');

-- Insert data into the Medical_evaluation table
INSERT INTO "Medical_evaluation" ("Patient_id", "Doctor_id", "Medical_prescription", "Diagnosis")
VALUES (1, 1, 1, 'Flu');

-- Insert data into the Medication_delivery table
INSERT INTO "Medication_delivery" ("Pharmapro_id", "Patient_id", "Drug_delivered_id", "Medication_delivery_date")
VALUES (1, 1, 1, '2024-08-01 10:00:00');

-- Patient of the medical facility
CREATE TABLE "Patient" (
  "id" INTEGER,
  "Name" TEXT NOT NULL,
  "Last_name" TEXT NOT NULL,
  "Gender" TEXT,
  "Email" TEXT,
  "Age" INTEGER NOT NULL ,
  "Birth_date" DATE NOT NULL,
  PRIMARY KEY ("id")
);

-- Workers on the medical facility

CREATE TABLE "Doctors" (
  "id" INTEGER,
  "Name" TEXT NOT NULL,
  "Last_name" TEXT NOT NULL,
  "Gender" TEXT NOT NULL,
  "Email" TEXT NOT NULL,
  "Start_date" DATE NOT NULL,
  "Age" INTEGER NOT NULL,
  "Birth_date" DATE NOT NULL,
  PRIMARY KEY ("id")
);

CREATE TABLE "Nurse" (
  "id" INTEGER,
  "Name" TEXT NOT NULL,
  "Last_name" TEXT NOT NULL,
  "Gender" TEXT NOT NULL,
  "Email" TEXT NOT NULL,
  "Start_date" DATE NOT NULL,
  "Age" INTEGER NOT NULL,
  "Birth_date" DATE NOT NULL,
  PRIMARY KEY ("id")
);

CREATE TABLE "Pharmaceutical_professionals" (
  "id" INTEGER,
  "Name" TEXT NOT NULL,
  "Last_name" TEXT NOT NULL,
  "Gender" TEXT NOT NULL,
  "Email" TEXT NOT NULL,
  "Start_date" DATE NOT NULL,
  "Age" INTEGER NOT NULL,
  "Birth_date" DATE NOT NULL,
  PRIMARY KEY ("id")
);

CREATE TABLE "Secretary" (
  "id" INTEGER,
  "Name" TEXT NOT NULL,
  "Last_name" TEXT NOT NULL,
  "Gender" TEXT NOT NULL,
  "Email" TEXT NOT NULL,
  "Start_date" DATE NOT NULL,
  "Age" INTEGER NOT NULL,
  "Birth_date" DATE NOT NULL,
  PRIMARY KEY ("id")
);

-- Stored Drugs into the medical facility

CREATE TABLE "Medications" (
  "id" INTEGER,
  "Name" TEXT NOT NULL,
  "Manufacture_date" DATE NOT NULL,
  "Expiration_date" DATE NOT NULL,
  "Pharmaceutical_company" TEXT NOT NULL,
  "Description" TEXT,
  PRIMARY KEY ("id")
);

-- Register of the patient into the medical facility through the secretary

CREATE TABLE "consultation" (
  "patient_id" INTEGER,
  "secretary_id" INTEGER,
  "patient_admission_date" DATETIME NOT NULL,
  PRIMARY KEY ("patient_id", "secretary_id"),
  FOREIGN KEY ("patient_id") REFERENCES "Patient" ("id"),
  FOREIGN KEY ("secretary_id") REFERENCES "Secretary" ("id")
);


-- Emergency and vital signs of the patient

CREATE TABLE "Emergency_Vitalsigns" (
  "Patient_id" INTEGER,
  "Nurse_id" INTEGER,
  "Patient_condition" TEXT,
  PRIMARY KEY ("Patient_id", "Nurse_id"),
  FOREIGN KEY ("Patient_id") REFERENCES "Patient" ("id"),
  FOREIGN KEY ("Nurse_id") REFERENCES "Nurse" ("id")
);

-- Proper medical evaluation by a Doctor
CREATE TABLE "Medical_evaluation" (
  "Patient_id" INTEGER,
  "Doctor_id" INTEGER,
  "Medical_prescription" INTEGER,
  "Diagnosis" TEXT,
  PRIMARY KEY ("Patient_id", "Doctor_id"),
  FOREIGN KEY ("Patient_id") REFERENCES "Patient" ("id"),
  FOREIGN KEY ("Doctor_id") REFERENCES "Doctors" ("id"),
  FOREIGN KEY ("Medical_prescription") REFERENCES "Medications" ("id")
);

-- Medication delivery in case of need by the patient
CREATE TABLE "Medication_delivery" (
  "Pharmapro_id" INTEGER,
  "Patient_id" INTEGER,
  "Drug_delivered_id" INTEGER,
  "Medication_delivery_date" DATETIME DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY ("Pharmapro_id", "Patient_id", "Drug_delivered_id"),
  FOREIGN KEY ("Patient_id") REFERENCES "Patient" ("id"),
  FOREIGN KEY ("Drug_delivered_id") REFERENCES "Medications" ("id"),
  FOREIGN KEY ("Pharmapro_id") REFERENCES "Pharmaceutical_professionals" ("id")
);

-- Indexes to speed the query of the most common needs
CREATE INDEX "patient_info_search" ON "Patient" ("id","Name","Last_name");
CREATE INDEX "Medication_info_search" ON "Medications" ("id","Name", "Manufacture_date", "Expiration_date");
CREATE INDEX "consultation_info_search" ON "consultation" ("patient_id","secretary_id");


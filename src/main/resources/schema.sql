DROP TABLE IF EXISTS surgery CASCADE;
DROP TABLE IF EXISTS operation CASCADE;
DROP TABLE IF EXISTS patient CASCADE;
DROP TABLE IF EXISTS nurse CASCADE;
DROP TABLE IF EXISTS doctor CASCADE;

CREATE TABLE doctor (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255),
    surname VARCHAR(255),
    proficiency VARCHAR(255)
);

CREATE TABLE nurse (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255),
    surname VARCHAR(255),
    proficiency VARCHAR(255)
);

CREATE TABLE patient (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255),
    surname VARCHAR(255),
    email VARCHAR(255),
    complaint TEXT
);

CREATE TABLE surgery (
    id BIGSERIAL PRIMARY KEY,
    nurse_id BIGINT,
    patient_id BIGINT,
    doctor_id BIGINT,
    CONSTRAINT fk_surgery_nurse FOREIGN KEY (nurse_id) REFERENCES nurse (id),
    CONSTRAINT fk_surgery_patient FOREIGN KEY (patient_id) REFERENCES patient (id),
    CONSTRAINT fk_surgery_doctor FOREIGN KEY (doctor_id) REFERENCES doctor (id)
);

CREATE TABLE operation (
    id BIGSERIAL PRIMARY KEY,
    patient_id BIGINT,
    doctor_id BIGINT,
    CONSTRAINT fk_operation_patient FOREIGN KEY (patient_id) REFERENCES patient (id),
    CONSTRAINT fk_operation_doctor FOREIGN KEY (doctor_id) REFERENCES doctor (id)
);

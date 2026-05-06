package com.workintech.sqlrelations.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "surgery")
public class Surgery {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "nurse_id")
    private long nurseId;

    @Column(name = "patient_id")
    private long patientId;

    @Column(name = "doctor_id")
    private long doctorId;

    public Surgery() {
    }

    public Surgery(long id, long nurseId, long patientId, long doctorId) {
        this.id = id;
        this.nurseId = nurseId;
        this.patientId = patientId;
        this.doctorId = doctorId;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getNurseId() {
        return nurseId;
    }

    public void setNurseId(long nurseId) {
        this.nurseId = nurseId;
    }

    public long getPatientId() {
        return patientId;
    }

    public void setPatientId(long patientId) {
        this.patientId = patientId;
    }

    public long getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(long doctorId) {
        this.doctorId = doctorId;
    }
}

package com.dht.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "appointment")
public class Appointment implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String id;

    @ManyToOne
    @JoinColumn(name = "patientid")
    private Patient patientid;

    @ManyToOne
    @JoinColumn(name = "doctorid")
    private Doctor doctorid;

    private Date date;
    private String description;



    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Patient getPatientid() {
        return patientid;
    }

    public void setPatientid(Patient patientid) {
        this.patientid = patientid;
    }

    public Doctor getDoctorid() {
        return doctorid;
    }

    public void setDoctorid(Doctor doctorid) {
        this.doctorid = doctorid;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}

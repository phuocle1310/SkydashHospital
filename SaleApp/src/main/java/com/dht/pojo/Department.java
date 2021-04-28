package com.dht.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "department")
public class Department implements Serializable {
    @Id
    private String id;
    private String name;

    @OneToMany(mappedBy = "departmentid", fetch = FetchType.LAZY)
    private List<Doctor> doctor;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Doctor> getDoctor() {
        return doctor;
    }

    public void setDoctor(List<Doctor> doctor) {
        this.doctor = doctor;
    }
}

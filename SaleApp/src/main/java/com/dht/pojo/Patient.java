package com.dht.pojo;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.sql.Date;
import java.util.List;

@Entity
@Table(name = "patient")
public class Patient implements Serializable {
    @Id
    private String id;
    @NotNull(message = "Khong duoc de trong")
    @Size(min = 3, max = 30, message = "Ten tu 3 den 30 ky tu")
    private String name;
    @Pattern(regexp = "\\d{9}", message = "CCID khong ton tai")
    private String ccid;
    private Date dateOfBirth;
    private String gender;
    private String disease;
    @NotNull(message = "Khong duoc de trong")
    @Pattern(regexp = "^[A-Za-z0-9+_.-]+@ou.edu.vn$", message = "Email phai la @ou.edu.vn")
    private String email;
    @Pattern(regexp = "\\d{10}", message = "Phone number khong ton tai")
    private String phone;
    private String address;


    @OneToMany(mappedBy = "patientid", fetch=FetchType.LAZY)
    private List<Bills> bill;

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

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }


    public String getDisease() {
        return disease;
    }

    public void setDisease(String disease) {
        this.disease = disease;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public List<Bills> getBill() {
        return bill;
    }

    public void setBill(List<Bills> bill) {
        this.bill = bill;
    }

    public String getCcid() {
        return ccid;
    }

    public void setCcid(String ccid) {
        this.ccid = ccid;
    }

}

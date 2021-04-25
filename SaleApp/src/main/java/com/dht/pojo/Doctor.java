package com.dht.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "doctor")
public class Doctor implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String id;
    private String name;
    private Date dateOfBirth;
    private String gender;
    private String image;

    @ManyToOne
    @JoinColumn(name = "departmentid")
    private Department departmentid;

    private String email;
    private String phone;
    private String address;

    @OneToMany(mappedBy = "doctorid", fetch = FetchType.LAZY)
    private List<ExaminationSchedule> examinationSchedule;

    @OneToOne(mappedBy = "doctor", cascade = CascadeType.ALL)
    @PrimaryKeyJoinColumn
    private Account account;

    @OneToMany
    private List<ShiftDetail> shiftDetails;

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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Department getDepartmentid() {
        return departmentid;
    }

    public void setDepartmentid(Department departmentid) {
        this.departmentid = departmentid;
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

    public List<ExaminationSchedule> getExaminationSchedule() {
        return examinationSchedule;
    }

    public void setExaminationSchedule(List<ExaminationSchedule> examinationSchedule) {
        this.examinationSchedule = examinationSchedule;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }
}
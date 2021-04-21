package com.dht.pojo;


import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

@Entity
@Table(name = "drugs")
public class Drugs implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String id;
    private String name;

    @OneToMany(mappedBy = "drug")
    private Set<BillDetails> billDetail;

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

    public Set<BillDetails> getBillDetail() {
        return billDetail;
    }

    public void setBillDetail(Set<BillDetails> billDetail) {
        this.billDetail = billDetail;
    }
}

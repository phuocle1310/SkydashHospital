package com.dht.repository.Implement;

import com.dht.pojo.Patient;
import com.dht.repository.IPatientsRepository;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;

import java.util.List;

@Repository
public class PatientsRepositoryImplement implements IPatientsRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    @Transactional
    public List<Patient> getAllPatient() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("From Patient ");

        return q.getResultList();
    }

    @Override
    @Transactional
    public Patient getPatientById(String id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Patient.class, id);
    }

    @Override
    @Transactional
    public boolean deletePatient(String patientId) {
        try {
            Session session = this.sessionFactory.getObject().getCurrentSession();
            Patient p = session.get(Patient.class, patientId);
            session.delete(p);
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }

        return false;
    }

}

package com.dht.service.Implement;

import com.dht.pojo.Doctor;
import com.dht.repository.IDoctorsRepository;
import com.dht.service.IDoctorsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DoctorsServiceImplement implements IDoctorsService {

    @Autowired
    private IDoctorsRepository doctorsRepository;

    @Override
    public List<Doctor> getAllDoctor() {
        return this.doctorsRepository.getAllDoctor();
    }

    @Override
    public Doctor getDoctorById(String id) {
        return this.doctorsRepository.getDoctorById(id);
    }

    @Override
    public boolean deleteDoctor(String doctorId) {
        return this.doctorsRepository.deleteDoctor(doctorId);
    }

    @Override
    public boolean addDoctor(Doctor doctor) {
        return this.doctorsRepository.addDoctor(doctor);
    }

    @Override
    public boolean updateDoctor(Doctor doctor) {
        return this.doctorsRepository.updateDoctor(doctor);
    }
}

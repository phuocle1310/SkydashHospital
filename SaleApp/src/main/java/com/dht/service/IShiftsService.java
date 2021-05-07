package com.dht.service;

import com.dht.pojo.Shift;

import java.util.List;

public interface IShiftsService {
    List<Shift> getAllShift();
    Shift getShiftById(String id);
    boolean deleteShift(String shiftId);
    boolean addShift(Shift shift);
    boolean updateShift(Shift shift);
}

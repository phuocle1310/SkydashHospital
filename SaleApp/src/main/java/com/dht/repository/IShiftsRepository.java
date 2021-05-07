package com.dht.repository;

import com.dht.pojo.Shift;

import java.util.List;

public interface IShiftsRepository {
    List<Shift> getAllShift();
    Shift getShiftById(String id);
    boolean deleteShift(String shiftId);
    boolean addShift(Shift shift);
    boolean updateShift(Shift shift);
}

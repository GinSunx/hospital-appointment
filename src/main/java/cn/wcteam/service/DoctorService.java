package cn.wcteam.service;

import java.util.List;

import cn.wcteam.entity.Doctor;

public interface DoctorService {
	public List<Doctor> findByHosAndDepartName(String hospName, String departName);
	public Doctor findDoctorById(int id);
	public int findDoctorNum();
	public String findDoctorTitle(int doctorId);
	public String findDoctorDegree(int doctorId);
}

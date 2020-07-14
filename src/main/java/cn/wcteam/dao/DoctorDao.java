package cn.wcteam.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.wcteam.entity.Doctor;

public interface DoctorDao {
	public List<Doctor> findByHosAndDepartName(@Param("hospName") String hospName,@Param("departName") String departName);
	public Doctor findDoctorById(int id);
	public int findDoctorNum();
	public String findDoctorTitle(int doctorId);
	public String findDoctorDegree(int doctorId);
}

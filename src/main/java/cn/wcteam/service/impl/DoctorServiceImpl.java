package cn.wcteam.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.wcteam.dao.DoctorDao;
import cn.wcteam.entity.Doctor;
import cn.wcteam.service.DoctorService;

@Service
public class DoctorServiceImpl implements DoctorService {

	@Autowired
	private DoctorDao doctorDao;

	@Override
	public List<Doctor> findByHosAndDepartName(String hospName, String departName) {
		return doctorDao.findByHosAndDepartName(hospName,departName );
	}

	@Override
	public Doctor findDoctorById(int id) {
		return doctorDao.findDoctorById(id);
	}

	@Override
	public int findDoctorNum(){
		return doctorDao.findDoctorNum();
	}

	@Override
	public String findDoctorTitle(int doctorId) {
		return doctorDao.findDoctorTitle(doctorId);
	}

	@Override
	public String findDoctorDegree(int doctorId) {
		return doctorDao.findDoctorDegree(doctorId);
	}
}

package cn.wcteam.service.impl;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.wcteam.dao.HospitalDao;
import cn.wcteam.entity.Hospital;
import cn.wcteam.service.HospitalService;

@Service
public class HospitalServiceImpl implements HospitalService {

	@Autowired
	private HospitalDao hospDao;

	@Override
	public List<Hospital> findAll(){
		return hospDao.findAll();
	}

	@Override
	public Hospital findHospById(int id) {

		return hospDao.findHospById(id);
	}

	@Override
	public Hospital findHospByName(String hospName) {
		return hospDao.findHospByName(hospName);
	}

	@Override
	public List<String> findAllHospLevel() {
		return hospDao.findAllHospLevel();
	}
	@Override
	public String findHospLevelByName(String hospName){
		return hospDao.findHospLevelByName(hospName);
	}

	@Override
	public List<String> findHospNature() {
		return hospDao.findHospNature();
	}

	@Override
	public String findHospNatureByName(String hospName){
		return hospDao.findHospNatureByName(hospName);
	}

	@Override
	public List<Hospital> findAllHospByConditon(String province, String city, String district, Hospital hospital,
			int start, int size) {return new ArrayList<Hospital>() ;}
}

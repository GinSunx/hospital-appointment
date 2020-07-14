package cn.wcteam.service;

import java.util.List;

import cn.wcteam.entity.Hospital;

public interface HospitalService {
	public List<Hospital> findAll();
	public Hospital findHospById(int id);
	public Hospital findHospByName(String hospName);
	public List<String> findAllHospLevel();
	public String findHospLevelByName(String hospName);
	public List<String> findHospNature();
	public String findHospNatureByName(String hospName);
	public List<Hospital> findAllHospByConditon(String province, String city, String district, Hospital hospital,
												int start, int size);
}

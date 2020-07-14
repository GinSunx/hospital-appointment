package cn.wcteam.dao;

import java.util.List;


import org.apache.ibatis.annotations.Param;

import cn.wcteam.entity.Hospital;

public interface HospitalDao {
	public List<Hospital> findAll();

	public Hospital findHospById(@Param("hospId") int id);
	public Hospital findHospByName(String hospName);

	public List<String> findAllHospLevel();
	public String findHospLevelByName(String hospName);
	public List<String> findHospNature();
	public String findHospNatureByName(String hospName);

	public List<Hospital> findAllHospByCondition(@Param("hospName") String hospName,
												 @Param("isMedicalInsurance") String isMedicalInsurance, @Param("hospLevel") String hospLevel,
												 @Param("hospNature") String hospNature, @Param("hospitalAddress") String hospitalAddress,
												 @Param("hospitalArea") String hospitalArea, @Param("start") int start, @Param("size") int size);
}

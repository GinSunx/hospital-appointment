package cn.wcteam.service;

import java.util.List;

import cn.wcteam.entity.Depart;

public interface DepartService {
	public List<Depart> findDepartByHospName(String hospName);
	public Depart findDepartById(int id);
	public int findDepartNum();
}

package cn.wcteam.dao;

import java.util.List;

import cn.wcteam.entity.Depart;

public interface DepartDao {
	public List<Depart> findDepartByHospName(String hospName);

	public Depart findDepartById(int id);

	public int findDepartNum();
}

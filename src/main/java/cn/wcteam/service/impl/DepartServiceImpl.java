package cn.wcteam.service.impl;

import java.util.List;

import cn.wcteam.entity.Depart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.wcteam.dao.DepartDao;
import cn.wcteam.service.DepartService;

@Service
public class DepartServiceImpl implements DepartService {
	@Autowired
	private DepartDao departDao;

	@Override
	public List<Depart> findDepartByHospName(String hospName) {
		return departDao.findDepartByHospName(hospName);
	}

	@Override
	public Depart findDepartById(int id) {
		return departDao.findDepartById(id);
	}

	@Override
	public int findDepartNum() {
		return departDao.findDepartNum();
	}

}

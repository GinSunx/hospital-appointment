package cn.wcteam.service.impl;

import java.util.List;

import cn.wcteam.dao.OrderRecordsDao;
import cn.wcteam.entity.OrderRecords;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.wcteam.service.OrderRecordsService;

@Service
public class OrderOrderRecordsServiceImpl implements OrderRecordsService {
	@Autowired
	private OrderRecordsDao orderRecordsDao;

	@Override
	public OrderRecords findOrderById(int id){
		return orderRecordsDao.findOrderById(id);
	}
	@Override
	@Transactional
	public int insertOrderRecords(OrderRecords orderRecords) {
		return orderRecordsDao.insertOrderRecords(orderRecords);
	}

	@Override
	public List<OrderRecords> findOrderRecordsByUserId(int userId) {
		return orderRecordsDao.findOrderRecordsByUserId(userId);
	}

	@Override
	public int updateOrderSta1(int id) {
		return orderRecordsDao.updateOrderSta1(id);
	}

	@Override
	public int findLastId() {
		return orderRecordsDao.findLastId();
	}

	@Override
	public int updateOrderDiseaseInfo(String diseaseInfo, int id) {
		return orderRecordsDao.updateOrderDiseaseInfo(diseaseInfo, id);
	}

	@Override
	public int cancelOrder(int id) {
		int ver = 0;
		OrderRecords orderRecords = orderRecordsDao.findOrderById(id);
		if (orderRecords.getIsSuccess() == 1) {
			orderRecordsDao.cancelOrder1(id);
			ver = 1;
		}

		if (orderRecords.getIsSuccess() == 0) {
			orderRecordsDao.cancelOrder2(id);
			ver = 2;
		}
		return ver;
	}
	@Override
	public void deleterOrderById(int id){
		orderRecordsDao.deleterOrderById(id);
	}

}

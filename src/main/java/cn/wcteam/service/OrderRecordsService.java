package cn.wcteam.service;

import java.util.List;

import cn.wcteam.entity.OrderRecords;

public interface OrderRecordsService {
	public OrderRecords findOrderById(int id);
	public int insertOrderRecords(OrderRecords orderRecords);
	public List<OrderRecords> findOrderRecordsByUserId(int userId);
	public int updateOrderSta1(int id);
	public int updateOrderDiseaseInfo(String diseaseInfo,int id);
	public int findLastId();
	public int cancelOrder(int id);
	public void deleterOrderById(int id);
}

package cn.wcteam.dao;

import java.util.List;

import cn.wcteam.entity.OrderRecords;
import org.apache.ibatis.annotations.Param;

public interface OrderRecordsDao {
	public OrderRecords findOrderById(int id);
	public int insertOrderRecords(OrderRecords orderRecords);

	public List<OrderRecords> findOrderRecordsByUserId(int userId);

	public int updateOrderSta1(int id);
	public int updateOrderDiseaseInfo(@Param("diseaseInfo") String diseaseInfo, @Param("id") int id);
	public int findLastId();
	public int cancelOrder1(int id);
	public int cancelOrder2(int id);
	public void deleterOrderById(int id);
}

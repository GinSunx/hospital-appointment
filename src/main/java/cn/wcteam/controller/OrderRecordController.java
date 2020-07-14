package cn.wcteam.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import cn.wcteam.entity.*;
import cn.wcteam.service.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class OrderRecordController {
	@Autowired
	private CommonUserService commnUserService;
	@Autowired
	private OrderRecordsService orderRecordsService;
	@Autowired
	private SourceService sourceService;
	@Autowired
	private DoctorService doctorService;

	private static Logger log = LoggerFactory.getLogger(OrderRecordController.class);

	@RequestMapping(value = "/orderIndex", method = RequestMethod.GET)
	public String orderIndex() {
		return "order/orderInfo";
	}

	@RequestMapping(value = "/order", method = RequestMethod.POST)
	public String order(String orderInfoValue, String hospName, String departName, String doctorName,
			String userIdent, Model model, String doctorImg) {
		String orderInfoValueArry[] = orderInfoValue.split(",");
		String appointmentDate = orderInfoValueArry[0];
		String appointmentTime = orderInfoValueArry[1];
		CommonUser commonUser = commnUserService.findCommonUserByUserIdent(userIdent);
		OrderRecords orderRecords = new OrderRecords();

		List<Doctor> doctor = doctorService.findByHosAndDepartName(hospName, departName);
		int doctorId = -1;
		for(int i = 0; i < doctor.size();i++){
			if(doctor.get(i).getDoctorName().equals(doctorName)) {
				doctorId = doctor.get(i).getDoctorId();
				break;
			}
		}

		if(doctorId >0 ) {
			System.out.println ("成啦");
			Source source = sourceService.findByDocId(doctorId);
			orderRecords.setNumSourceNo(source.getNumSourceNo());
			sourceService.decrease1(source.getNumSourceNo());
		}

		orderRecords.setUserId((int) commonUser.getUserId());
		orderRecords.setAppointmentDate(appointmentDate);
		orderRecords.setAppointmentTime(appointmentTime);
		orderRecords.setHospName(hospName);
		orderRecords.setDepartName(departName);
		orderRecords.setDoctorName(doctorName);
		orderRecords.setState(0);

		log.info("插入订单，待提交！");
		orderRecordsService.insertOrderRecords(orderRecords);

		int id = orderRecordsService.findLastId();
		System.out.println(id);
		orderRecords.setId(id);
		model.addAttribute("orderRecords", orderRecords);
		model.addAttribute("commonUser", commonUser);
		model.addAttribute("doctorImg", doctorImg);
		return "order/orderInfo";
	}

	@RequestMapping(value = "/orderUserCenter", method = RequestMethod.POST)
	public String OrderUserCenter(Model model, int userId, int id, String diseaseInfo, HttpSession session) {
		CommonUser commonUser = (CommonUser) session.getAttribute("userInfo");
		model.addAttribute("commonUser", commonUser);
		System.out.println("id ===============" + id);
		orderRecordsService.updateOrderSta1(id);
		orderRecordsService.updateOrderDiseaseInfo(diseaseInfo, id);

		List<OrderRecords> records = orderRecordsService.findOrderRecordsByUserId(userId);
		log.info("插入订单，已提交订单！");
		model.addAttribute("orderRecords", records);
		return "userCenter/userCenter";
	}

	@RequestMapping(value = "/cancelOrder/{id}", method = RequestMethod.POST)
	public String cancelOrder(Model model, @PathVariable(value = "id") int id, HttpSession session) {
		orderRecordsService.cancelOrder(id);
		CommonUser commonUser = (CommonUser) session.getAttribute("userInfo");
		if (commonUser != null) {
			List<OrderRecords> records = orderRecordsService.findOrderRecordsByUserId(commonUser.getUserId());
			model.addAttribute("orderRecords", records);
			model.addAttribute("commonUser", commonUser);
			return "redirect:/userCenter";
		}
		return "redirect:/userCenter";
	}

	@RequestMapping(value = "/deleteOrder/{id}", method = RequestMethod.GET)
	public String deleteOrder(@PathVariable(value="id") int id){
		orderRecordsService.deleterOrderById(id);
		return "redirect:/userCenter";
	}
}

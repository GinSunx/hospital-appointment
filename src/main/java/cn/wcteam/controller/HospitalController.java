package cn.wcteam.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.wcteam.entity.CommonUser;
import cn.wcteam.entity.Hospital;
import cn.wcteam.entity.Depart;
import cn.wcteam.service.HospitalService;
import cn.wcteam.service.DepartService;

@Controller
public class HospitalController {
	@Autowired
	private HospitalService hospitalService;
	@Autowired
	private DepartService Departervice;

	@RequestMapping(value = "/hosIndex", method = RequestMethod.GET)
	public String hosIndex(Model model) {
		List<Hospital> allHosp = hospitalService.findAll();
		model.addAttribute("hospital", allHosp);
		return "hospital/hosIndex";
	}

	@RequestMapping(value = "/hosInfoShow/{hospId}", method = RequestMethod.GET)
	public String hosInfoShow(Model model, @PathVariable(value = "hospId") int id,HttpSession session) {
		if(session.getAttribute("userInfo") != null) {
			CommonUser commonUser = (CommonUser) session.getAttribute("userInfo");
		}
		Hospital hospital = hospitalService.findHospById(id);
		List<Depart> depart = Departervice.findDepartByHospName(hospital.getHospName());

		model.addAttribute("hos", hospital);
		model.addAttribute("depart", depart);
		return "hospital/hosInfoShow";
	}
}

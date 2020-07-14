package cn.wcteam.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.wcteam.entity.Depart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.wcteam.entity.Doctor;
import cn.wcteam.entity.Hospital;
import cn.wcteam.service.DoctorService;
import cn.wcteam.service.HospitalService;
import cn.wcteam.service.DepartService;

@Controller
public class DepartController {
	@Autowired
	private HospitalService hospitalService;
	@Autowired
	private DepartService departService;
	@Autowired
	private DoctorService doctorService;

	@RequestMapping(value = "/departIndex/{page}")
	public String departIdex(Model model, @PathVariable("page") int page) {
		Map<String, Object> departMap = new HashMap<String, Object>();
		departMap.put("size", 20);
		return "depart/departIndex";
	}

	@RequestMapping(value = "/departInfoShow/{id}", method = RequestMethod.GET)
	public String hosInfoShow(Model model, @PathVariable(value = "id") int id) {
		Depart depart = departService.findDepartById(id);
		Hospital hospital = hospitalService.findHospByName(depart.getHospName());
		List<Doctor> doctor = doctorService.findByHosAndDepartName(depart.getHospName(),
				depart.getDepartName());
		model.addAttribute("depart", depart);
		model.addAttribute("hos", hospital);
		model.addAttribute("doctor", doctor);
		return "depart/departInfoShow";
	}
}

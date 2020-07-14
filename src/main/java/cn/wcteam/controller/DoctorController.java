package cn.wcteam.controller;

import cn.wcteam.service.DepartService;
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

@Controller
public class DoctorController {
	@Autowired
	private DoctorService doctorService;
	@Autowired
	private HospitalService hospitalService;
	@Autowired
	private DepartService departService;

	@RequestMapping(value = "/doctorInfoShow/{id}", method = RequestMethod.GET)
	public String hosInfoShow(Model model, @PathVariable(value = "id") int id) {
		Doctor doctor = doctorService.findDoctorById(id);
		Hospital hospital = hospitalService.findHospByName(doctor.getHospName());
		model.addAttribute("hos", hospital);
		model.addAttribute("doctor", doctor);

		return "doctor/doctorInfoShow";
	}


	@RequestMapping(value = "/doctorIndex/{page}")
	public String departIdex(Model model, @PathVariable("page") int page) {
		return "doctor/doctorIndex";
	}
}

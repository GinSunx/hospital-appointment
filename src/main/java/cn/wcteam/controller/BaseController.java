package cn.wcteam.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BaseController {
	private static Logger log = LoggerFactory.getLogger(BaseController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String indexOf() {
		log.info("用户登录主页");
		return "redirect:/hosIndex";
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "redirect:/hosIndex";
	}

	@RequestMapping(value = "/logOff", method = RequestMethod.GET)
	public String logOff(HttpSession session) {
		session.invalidate();
		return "redirect:/hosIndex";
	}
}

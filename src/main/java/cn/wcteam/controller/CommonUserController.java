package cn.wcteam.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import cn.wcteam.entity.OrderRecords;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.wcteam.entity.CommonUser;
import cn.wcteam.service.CommonUserService;
import cn.wcteam.service.HospitalService;
import cn.wcteam.service.OrderRecordsService;

@Controller
public class CommonUserController {
	@Autowired
	private CommonUserService commonUserService;
	@Autowired
	private OrderRecordsService orderRecordsService;
	@Autowired
	private HospitalService hospitalService;

	private static Logger log = LoggerFactory.getLogger(CommonUserController.class);

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(HttpSession session) {
		session.invalidate();
		return "user/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Model model, String userEmail, String userPsw, HttpSession session,
			HttpServletRequest request) {
		int result = commonUserService.login(userEmail.trim(), userPsw, request);
		String error = "";
		CommonUser commonUser = commonUserService.findCommonUserByEmail(userEmail.trim());
		if (result == 2) {
			if(commonUser.getLevel() == 0) {
				model.addAttribute("user", commonUser);
				session.setAttribute("userInfo", commonUser);
				return "redirect:/hosIndex";
			} else if(commonUser.getLevel() == 1) {
				return "manager/hospital";
			} else {
				return "manager/aiAppoint";
			}
		} else if (result == 1) {
			error = "密码错误";
			log.info(error);
			model.addAttribute("error", error);
			return "user/login";
		} else {
			error = "该用户不存在";
			log.info(error);
			model.addAttribute("error", error);
			return "user/login";
		}

	}

	@RequestMapping(value = "/sign", method = RequestMethod.GET)
	public String sign(HttpSession session) {
		session.invalidate();
		return "user/sign";
	}

	@RequestMapping(value = "/sign", method = RequestMethod.POST)
	public String sign(Model model, CommonUser commonUser, HttpServletRequest request) {
		commonUser.setUserEmail(commonUser.getUserEmail().trim());
		int result = commonUserService.sign(commonUser, request);
		String error = "";
		if (result == 1) {
			error = "用户邮箱已被注册";
			log.info(error);
			model.addAttribute("error", error);
			return "user/sign";
		}
		error = "注册成功，请登录账号";
		log.info(error);
		model.addAttribute("error", error);
		return "user/login";
	}

	@RequestMapping(value = "/addUserInfo", method = RequestMethod.GET)
	public String addUserInfo(final HttpSession session, Model model) {
		return "/user/addUserInfo";
	}

	@RequestMapping(value = "/addUserInfo", method = RequestMethod.POST)
	public String addUserInfo(String userIdent, String userName, String userTel, String userSex, HttpSession session,
							  Model model) {
		CommonUser commonUser = (CommonUser) session.getAttribute("userInfo");
		String error = "";
		int result = commonUserService.addUserInfo(commonUser.getUserEmail(), userIdent, userName, userTel, userSex);
		if (result == 0) {
			error = "身份证已经被注册";
			log.info(error);
			model.addAttribute("error", error);
			return "user/addUserInfo";
		}
		if (result == 2) {
			error = "手机号已经被注册";
			log.info(error);
			model.addAttribute("error", error);
			return "user/addUserInfo";
		}
		CommonUser commonUser1 = commonUserService.findCommonUserByEmail(commonUser.getUserEmail());
		session.setAttribute("userInfo", commonUser1);
		return "redirect:/hosIndex";
	}

	@RequestMapping(value = "/userCenter", method = RequestMethod.GET)
	public String userCenter(HttpSession session, Model model) {
		CommonUser commonUser = (CommonUser) session.getAttribute("userInfo");
		if (commonUser != null) {
			List<OrderRecords> records = orderRecordsService.findOrderRecordsByUserId(commonUser.getUserId());
			model.addAttribute("orderRecords", records);
			model.addAttribute("commonUser", commonUser);
			return "userCenter/userCenter";
		}
		return "redirect:/hosIndex";
	}

	@RequestMapping(value = "/modifyPhone", method = RequestMethod.GET)
	public String modifyPhone(final HttpSession session, Model model) {
		final CommonUser commonUser = (CommonUser) session.getAttribute("userInfo");
		return "/user/modifyPhone";
	}

	@RequestMapping(value = "/modifyPhone", method = RequestMethod.POST)
	public String modifyPhone(String userTel, HttpSession session, Model model) {
		CommonUser commonUser = (CommonUser) session.getAttribute("userInfo");
		String error = "";
		int result = commonUserService.modifyPhone(userTel, commonUser.getUserEmail());
		if (result == 2) {
			error = "手机号已经被注册";
			log.info(error);
			model.addAttribute("error", error);
			return "user/modifyPhone";
		}
		CommonUser commonUser1 = commonUserService.findCommonUserByEmail(commonUser.getUserEmail());
		session.setAttribute("userInfo", commonUser1);
		return "redirect:/userCenter";
	}

	@RequestMapping(value = "/findPsw", method = RequestMethod.GET)
	public String findPsw() {
		return "user/findPsw";
	}

	@RequestMapping(value = "/findPsw", method = RequestMethod.POST)
	public String findPsw(Model model, final String userIdent,final String userEmail, final HttpSession session) {
		String error = "";
		final CommonUser commonUser = commonUserService.findCommonUserByUserIdent(userIdent);
		session.setAttribute("userInfo", commonUser);
		if (commonUser == null) {
			error = "用户不存在，请检查后输入";
			log.info(error);
			model.addAttribute("error", error);
			return "user/findPsw";
		} else {
			String email = commonUser.getUserEmail();
			log.info(email);
			if (!userEmail.equals(email)) {
				error = "邮箱不匹配，请检查后输入";
				log.info(error);
				model.addAttribute("error", error);
				return "user/findPsw";
			} else {
				return "user/updatePsw";
			}
		}
	}

	@RequestMapping(value = "/updatePsw", method = RequestMethod.GET)
	public String modifyPsw() {
		return "/user/updatePsw";
	}

	@RequestMapping(value = "/updatePsw", method = RequestMethod.POST)
	public String updatePsw(String newPsw, Model model, HttpSession session) {
		String error = "";
		CommonUser commonUser = (CommonUser) session.getAttribute("userInfo");
		boolean isSuccess = commonUserService.modifyPsw(commonUser.getUserEmail(), newPsw);
		if (isSuccess) {
			error = "密码修改成功";
			log.info(error);
			model.addAttribute("error", error);
			return "user/login";
		} else {
			error = "密码修改失败";
			log.info(error);
			model.addAttribute("error", error);
			return "user/updatePsw";
		}
	}

	@ResponseBody
	@RequestMapping(value = "/updateSex", method = RequestMethod.POST)
	public Map<String, Object> updateSex(String userSex, Model model, HttpSession session) {
		CommonUser commonUser = (CommonUser) session.getAttribute("userInfo");
		int userId = commonUser.getUserId();
		if (userSex.equals("男")) {
			commonUserService.modifySex(userId, "男");
		} else {
			commonUserService.modifySex(userId, "女");
		}
		String userSexInfo = commonUserService.findCommonUserByEmail(commonUser.getUserEmail()).getUserSex();
		Map<String, Object> rtnMap = new HashMap<String, Object>();
		rtnMap.put("userSexInfo", userSexInfo);
		return rtnMap;
	}
}

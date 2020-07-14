package cn.wcteam.service.impl;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.wcteam.dao.CommonUserDao;
import cn.wcteam.entity.CommonUser;
import cn.wcteam.service.CommonUserService;
import cn.wcteam.utils.DateUtil;
import cn.wcteam.utils.DateUtil.DateFormat;

import cn.wcteam.utils.MD5;

import java.util.List;

@Service
public class CommonUserServiceImpl implements CommonUserService {

	@Autowired
	private CommonUserDao commonUserDao;
	@Autowired
	private DateUtil dateUtil;

	private static Logger log = LoggerFactory.getLogger(CommonUserServiceImpl.class);

	@Transactional
	@Override
	public int login(String userEmail, String userPsw, HttpServletRequest request) {
		CommonUser commonUser = commonUserDao.findCommonUserByEmail(userEmail);
		if (commonUser == null) {
			return 0;
		} else {
			if (MD5.getMD5(userPsw).equals(commonUser.getUserPsw())) {
				return 2;
			} else {
				return 1;
			}
		}
	}

	@Transactional
	public int sign(CommonUser commonUser, HttpServletRequest request) {
		String userEmail = commonUser.getUserEmail();
		if (commonUserDao.findCommonUserByEmail(userEmail.trim()) != null) {
			return 1;
		}
		String userPwd = commonUser.getUserPsw();
		log.info(commonUser.getUserEmail()+"**************************************************");
		log.info(userPwd+"**************************************************");
		commonUser.setUserPsw(MD5.getMD5(userPwd));
		commonUser.setRegTime(dateUtil.getCurrentTime(DateFormat.YYYY_MM_DD_HH_mm_ss));
		commonUser.setUserEmail(commonUser.getUserEmail().trim());
		commonUserDao.insertCommonUser(commonUser);
		return 3;
	}

	@Override
	public CommonUser findCommonUserByUserIdent(String userIdent) {
		return commonUserDao.findCommonUserByUserIdent(userIdent);
	}

	@Override
	public CommonUser findCommonUserByEmail(String userEmail) {
		return commonUserDao.findCommonUserByEmail(userEmail);
	}

	@Override
	public List<CommonUser> findCommonUserByUserName(String userName){
		return commonUserDao.findCommonUserByUserName(userName);
	}

	@Override
	public CommonUser findCommonUserByTel(String userTel){
		return commonUserDao.findCommonUserByTel(userTel);
	}

	@Override
	public boolean modifyPsw(String userEmail, String newPsw) {
		newPsw = MD5.getMD5(newPsw);
		if (commonUserDao.modifyPsw(userEmail, newPsw) > 0) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public int addUserInfo(String userEmail, String userIdent, String userName, String userTel,String userSex) {
		if (commonUserDao.findCommonUserByUserIdent(userIdent) != null) {
			return 0;
		}
		if (commonUserDao.findCommonUserByTel(userTel) != null) {
			return 2;
		}
		System.out.println("userEmail:" +userEmail + "\nuserName"+ userName+"\nUserIdent"+userIdent+"\nuserSex" +userSex);

		commonUserDao.addUserInfo( userEmail, userIdent, userName, userTel, userSex);
		return 1;
	}

	@Override
	public int modifySex(int userId, String userSex) {
		return commonUserDao.modifySex(userId, userSex);
	}

	@Override
	public int modifyPhone(String userPhone, String userEmail) {
		if (commonUserDao.findCommonUserByTel(userPhone) != null) {
			return 2;
		}
		commonUserDao.modifyPhone(userEmail, userPhone);
		return 1;
	}
}

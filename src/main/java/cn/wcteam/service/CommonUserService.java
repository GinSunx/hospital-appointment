package cn.wcteam.service;

import javax.servlet.http.HttpServletRequest;
import cn.wcteam.entity.CommonUser;
import java.util.List;

public interface CommonUserService {
	public int login(String userEmail, String userPsw, HttpServletRequest request);
	public int sign(CommonUser commonUser, HttpServletRequest request);

	public CommonUser findCommonUserByUserIdent(String userIdent);
	public CommonUser findCommonUserByEmail(String userEmail);

	public List<CommonUser> findCommonUserByUserName(String userName);
	public CommonUser findCommonUserByTel(String userTel);

	public boolean modifyPsw( String userEmail,String newPsw);
	public int addUserInfo(String userEmail,String userIdent,String userName, String userTel,String userSex);
	public int modifySex (int userId,String userSex);
	public int modifyPhone (String userPhone,String userEmail);
}

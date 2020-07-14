package cn.wcteam.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import cn.wcteam.entity.CommonUser;

public interface CommonUserDao {
	public int insertCommonUser(CommonUser CommonUser);
	public int addUserInfo(@Param("userEmail") String userEmail,
						   @Param("userIdent") String userIdent,@Param("userName")String userName,
						   @Param("userTel") String userTel,@Param("userSex") String userSex);
	public int modifyPsw(@Param("userEmail") String userEmail, @Param("newPsw") String newPsw);
	public int modifySex(@Param("userId") int userId,@Param("userSex") String userSex);
	public int modifyPhone(@Param("userEmail") String userEmail, @Param("newPhone") String newPhone);


	public CommonUser findCommonUserByUserId(int userId);
	public CommonUser findCommonUserByUserIdent(String userIdent);
	public List<CommonUser> findCommonUserByUserName(String userName);
	public CommonUser findCommonUserByEmail(String userEmail);
	public CommonUser findCommonUserByTel(String userTel);
}

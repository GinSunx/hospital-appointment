package cn.wcteam.entity;

public class Depart {
	private int id;
	private int departId;
	private String departName;
	private String hospName;
	private String doctorNum;
	private String departInfo;
	private String departType;
	private String departScope;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getDepartId() {
		return departId;
	}

	public void setDepartId(int departId) {
		this.departId = departId;
	}

	public String getDepartName() {
		return departName;
	}

	public void setDepartName(String departName) {
		this.departName = departName;
	}

	public String getHospName() {
		return hospName;
	}

	public void setHospName(String hospName) {
		this.hospName = hospName;
	}

	public String getDoctorNum() {
		return doctorNum;
	}

	public void setDoctorNum(String doctorNum) {
		this.doctorNum = doctorNum;
	}

	public String getDepartInfo() {
		return departInfo;
	}

	public void setDepartInfo(String departInfo) {
		this.departInfo = departInfo;
	}

	public String getDepartType() {
		return departType;
	}

	public void setDepartType(String departType) {
		this.departType = departType;
	}

	public String getDepartScope() {
		return departScope;
	}

	public void setDepartScope(String departScope) {
		this.departScope = departScope;
	}

	@Override
	public String toString() {
		return "Depart{" +
				"id=" + id +
				", departId=" + departId +
				", departName='" + departName + '\'' +
				", hospName='" + hospName + '\'' +
				", doctorNum='" + doctorNum + '\'' +
				", departInfo='" + departInfo + '\'' +
				", departType='" + departType + '\'' +
				", departScope='" + departScope + '\'' +
				'}';
	}
}

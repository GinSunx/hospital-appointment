package cn.wcteam.entity;

public class Hospital {
	private int hospId;
	private String hospName;
	private String hospDistrict;
	private String hospDeanName;
	private String hospImg;
	private String builtYear;
	private String hospNature;
	private String hospLevel;
	private int departNum;
	private String hospInfo;
	private String hospTel;
	private String hospAddress;
	private String hospUrl;

	public int getHospId() {
		return hospId;
	}

	public void setHospId(int hospId) {
		this.hospId = hospId;
	}

	public String getHospName() {
		return hospName;
	}

	public void setHospName(String hospName) {
		this.hospName = hospName;
	}

	public String getHospDistrict() {
		return hospDistrict;
	}

	public void setHospDistrict(String hospDistrict) {
		this.hospDistrict = hospDistrict;
	}

	public String getHospDeanName() {
		return hospDeanName;
	}

	public void setHospDeanName(String hospDeanName) {
		this.hospDeanName = hospDeanName;
	}

	public String getHospImg() {
		return hospImg;
	}

	public void setHospImg(String hospImg) {
		this.hospImg = hospImg;
	}

	public String getBuiltYear() {
		return builtYear;
	}

	public void setBuiltYear(String builtYear) {
		this.builtYear = builtYear;
	}

	public String getHospNature() {
		return hospNature;
	}

	public void setHospNature(String hospNature) {
		this.hospNature = hospNature;
	}

	public String getHospLevel() {
		return hospLevel;
	}

	public void setHospLevel(String hospLevel) {
		this.hospLevel = hospLevel;
	}

	public int getDepartNum() {
		return departNum;
	}

	public void setDepartNum(int departNum) {
		this.departNum = departNum;
	}

	public String getHospInfo() {
		return hospInfo;
	}

	public void setHospInfo(String hospInfo) {
		this.hospInfo = hospInfo;
	}

	public String getHospTel() {
		return hospTel;
	}

	public void setHospTel(String hospTel) {
		this.hospTel = hospTel;
	}

	public String getHospAddress() {
		return hospAddress;
	}

	public void setHospAddress(String hospAddress) {
		this.hospAddress = hospAddress;
	}

	public String getHospUrl() {
		return hospUrl;
	}

	public void setHospUrl(String hospUrl) {
		this.hospUrl = hospUrl;
	}

	@Override
	public String toString() {
		return "Hospital{" +
				"hospId=" + hospId +
				", hospName='" + hospName + '\'' +
				", hospDistrict='" + hospDistrict + '\'' +
				", hospDeanName='" + hospDeanName + '\'' +
				", hospImg='" + hospImg + '\'' +
				", builtYear='" + builtYear + '\'' +
				", hospNature='" + hospNature + '\'' +
				", hospLevel='" + hospLevel + '\'' +
				", departNum=" + departNum +
				", hospInfo='" + hospInfo + '\'' +
				", hospTel='" + hospTel + '\'' +
				", hospAddress='" + hospAddress + '\'' +
				", hospUrl='" + hospUrl + '\'' +
				'}';
	}
}

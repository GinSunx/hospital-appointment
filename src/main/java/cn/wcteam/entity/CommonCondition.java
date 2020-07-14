package cn.wcteam.entity;



public class CommonCondition {
	private String hospName;
	private String hospLevel;
	private String hospNature;
	private String departName;
	private String province;
	private String city;
	private String district;
	private String doctorName;
	private String doctorAdministrative;
	private String doctorTitle;
	private String doctorDegree;

	public String gethospName() {
		return hospName;
	}
	public void setHospName(String hospName) {
		this.hospName = hospName;
	}
	public String getHospLevel() {
		return hospLevel;
	}
	public void setHospLevel(String hospLevel) {
		this.hospLevel = hospLevel;
	}
	public String getHospNature() {
		return hospNature;
	}
	public void setHospNature(String hospNature) {
		this.hospNature = hospNature;
	}
	public String getDepartsName() {
		return departName;
	}
	public void setDepartName(String departName) {
		this.departName = departName;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getDoctorName() {
		return doctorName;
	}
	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}
	public String getDoctorAdministrative() {
		return doctorAdministrative;
	}
	public void setDoctorAdministrative(String doctorAdministrative) {
		this.doctorAdministrative = doctorAdministrative;
	}
	public String getDoctorTitle() {
		return doctorTitle;
	}
	public void setDoctorTitle(String doctorTitle) {
		this.doctorTitle = doctorTitle;
	}
	public String getDoctorDegree() {
		return doctorDegree;
	}
	public void setDoctorDegree(String doctorDegree) {
		this.doctorDegree = doctorDegree;
	}
	@Override
	public String toString() {
		return "CommonCondition [hospName=" + hospName + ", hospLevel=" + hospLevel
				+ ", hospNature=" + hospNature + ", departName=" + departName + ", province=" + province
				+ ", city=" + city + ", district=" + district + ", doctorName=" + doctorName + ", doctorAdministrative="
				+ doctorAdministrative + ", doctorTitle=" + doctorTitle + ", doctorDegree=" + doctorDegree + "]";
	}





}

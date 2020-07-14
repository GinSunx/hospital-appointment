package cn.wcteam.entity;

public class Doctor {
	private int doctorId;
	private String doctorName;
	private String doctorSex;
	private String hospName;
	private String departName;
	private String doctorImg;
	private String doctorTitle;
	private String doctorDegree;
	private String teachTitle;
	private String doctorForte;
	private String doctorInfo;

	public int getDoctorId() {
		return doctorId;
	}

	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}

	public String getDoctorName() {
		return doctorName;
	}

	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}

	public String getDoctorSex() {
		return doctorSex;
	}

	public void setDoctorSex(String doctorSex) {
		this.doctorSex = doctorSex;
	}

	public String getHospName() {
		return hospName;
	}

	public void setHospName(String hospName) {
		this.hospName = hospName;
	}

	public String getDepartName() {
		return departName;
	}

	public void setDepartName(String departName) {
		this.departName = departName;
	}

	public String getDoctorImg() {
		return doctorImg;
	}

	public void setDoctorImg(String doctorImg) {
		this.doctorImg = doctorImg;
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

	public String getTeachTitle() {
		return teachTitle;
	}

	public void setTeachTitle(String teachTitle) {
		this.teachTitle = teachTitle;
	}

	public String getDoctorForte() {
		return doctorForte;
	}

	public void setDoctorForte(String doctorForte) {
		this.doctorForte = doctorForte;
	}

	public String getDoctorInfo() {
		return doctorInfo;
	}

	public void setDoctorInfo(String doctorInfo) {
		this.doctorInfo = doctorInfo;
	}

	@Override
	public String toString() {
		return "Doctor{" +
				"doctorId=" + doctorId +
				", doctorName='" + doctorName + '\'' +
				", doctorSex='" + doctorSex + '\'' +
				", hospName='" + hospName + '\'' +
				", departName='" + departName + '\'' +
				", doctorImg='" + doctorImg + '\'' +
				", doctorTitle='" + doctorTitle + '\'' +
				", doctorDegree='" + doctorDegree + '\'' +
				", teachTitle='" + teachTitle + '\'' +
				", doctorForte='" + doctorForte + '\'' +
				", doctorInfo='" + doctorInfo + '\'' +
				'}';
	}
}

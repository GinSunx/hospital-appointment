package cn.wcteam.entity;

import java.sql.Timestamp;

public class OrderRecords {
	private int id;
	private int userId;
	private int numSourceNo;
	private String hospName;
	private String departName;
	private String doctorName;
	private String appointmentDate;
	private String appointmentTime;
	private Timestamp createTime;
	private String diseaseInfo;
	private int isSuccess;
	private int isCancel;
	private int state;
	private double fee;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getNumSourceNo() {
		return numSourceNo;
	}

	public void setNumSourceNo(int numSourceNo) {
		this.numSourceNo = numSourceNo;
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

	public String getDoctorName() {
		return doctorName;
	}

	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}

	public String getAppointmentDate() {
		return appointmentDate;
	}

	public void setAppointmentDate(String appointmentDate) {
		this.appointmentDate = appointmentDate;
	}

	public String getAppointmentTime() {
		return appointmentTime;
	}

	public void setAppointmentTime(String appointmentTime) {
		this.appointmentTime = appointmentTime;
	}

	public Timestamp getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}

	public String getDiseaseInfo() {
		return diseaseInfo;
	}

	public void setDiseaseInfo(String diseaseInfo) {
		this.diseaseInfo = diseaseInfo;
	}

	public int getIsSuccess() {
		return isSuccess;
	}

	public void setIsSuccess(int isSuccess) {
		this.isSuccess = isSuccess;
	}

	public int getIsCancel() {
		return isCancel;
	}

	public void setIsCancel(int isCancel) {
		this.isCancel = isCancel;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public double getFee() {
		return fee;
	}

	public void setFee(double fee) {
		this.fee = fee;
	}

	@Override
	public String toString() {
		return "OrderRecords{" +
				"id=" + id +
				", userId=" + userId +
				", numSourceNo=" + numSourceNo +
				", hospName='" + hospName + '\'' +
				", departName='" + departName + '\'' +
				", doctorName='" + doctorName + '\'' +
				", appointmentDate='" + appointmentDate + '\'' +
				", appointmentTime='" + appointmentTime + '\'' +
				", createTime=" + createTime +
				", diseaseInfo='" + diseaseInfo + '\'' +
				", isSuccess=" + isSuccess +
				", isCancel=" + isCancel +
				", state=" + state +
				", fee=" + fee +
				'}';
	}
}

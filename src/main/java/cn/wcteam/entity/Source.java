package cn.wcteam.entity;

public class Source {
    private int numSourceNo;
    private int hospId;
    private int departId;
    private int doctorId;
    private String workDate;
    private String workTime;
    private int initQuantity;
    private int restQuantity;
    private double fee;

    public int getNumSourceNo() {
        return numSourceNo;
    }

    public void setNumSourceNo(int numSourceNo) {
        this.numSourceNo = numSourceNo;
    }

    public int getHospId() {
        return hospId;
    }

    public void setHospId(int hospId) {
        this.hospId = hospId;
    }

    public int getDepartId() {
        return departId;
    }

    public void setDepartId(int departId) {
        this.departId = departId;
    }

    public int getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
    }

    public String getWorkDate() {
        return workDate;
    }

    public void setWorkDate(String workDate) {
        this.workDate = workDate;
    }

    public String getWorkTime() {
        return workTime;
    }

    public void setWorkTime(String workTime) {
        this.workTime = workTime;
    }

    public int getInitQuantity() {
        return initQuantity;
    }

    public void setInitQuantity(int initQuantity) {
        this.initQuantity = initQuantity;
    }

    public int getRestQuantity() {
        return restQuantity;
    }

    public void setRestQuantity(int restQuantity) {
        this.restQuantity = restQuantity;
    }

    public double getFee() {
        return fee;
    }

    public void setFee(double fee) {
        this.fee = fee;
    }

    @Override
    public String toString() {
        return "Source{" +
                "numSourceNo=" + numSourceNo +
                ", hospId=" + hospId +
                ", departId=" + departId +
                ", doctorId=" + doctorId +
                ", workDate='" + workDate + '\'' +
                ", workTime='" + workTime + '\'' +
                ", initQuantity=" + initQuantity +
                ", restQuantity=" + restQuantity +
                ", fee=" + fee +
                '}';
    }
}

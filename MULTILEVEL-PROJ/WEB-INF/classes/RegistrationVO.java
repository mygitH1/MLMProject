
package com.impact.mlm;

public class RegistrationVO {

	private int distributorId;
	private String introducerId="";
	private String topId="";
	private String dname="";
	private String wdsp="";
	private String occupation="";
	private String address="";
	private String city="";
	private String  pincode="";
	private String dist="";
	private String state="";
	private String phone="";
	private String mobile="";
	private String email="";
	private String bgroup="";
	private String nominee="";
	private String relation="";
	private String sex="";
	private int nage;
	private String dob="";
	private String doj="";
	private String wtd="";
	private String pic="";
	private String paytype="";
	private int ddno;
	private String dddate="";
	private String dddrawnon="";
	private float amount;
	private String spouse="";
	private String due;
	private float regFee;
	
	
	public int getDistributorId() {
		return distributorId;
	}
		public void setDistributorId(int distributorId) {
		this.distributorId = distributorId;
	}

	public String getIntroducerId() {
		return introducerId;
	}
	
	public void setIntroducerId(String introducerId) {
		this.introducerId = introducerId;
	}

	public String getTopId() {
		return topId;
	}
		public void setTopId(String topId) {
		this.topId = topId;
	}

	public String getDname() {
		return dname;
	}
		public void setDname(String name) {
		this.dname = name;
	}

	public String getWdsp() {
		return wdsp;
	}
	
	public void setWdsp(String wdsp) {
		this.wdsp = wdsp;
	}

	public String getOccupation() {
		return occupation;
	}
	
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}

	public String getPincode() {
		return pincode;
	}
		public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getDist() {
		return dist;
	}
	public void setDist(String dist) {
		this.dist = dist;
	}

	public String getState() {
		return state;
	}
	
	public void setState(String state) {
		this.state = state;
	}

	public String getPhone() {
		return phone;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMobile() {
		return mobile;
	}
	
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}
	
	public void setEmail(String mail) {
		this.email = mail;
	}

	public String getBgroup() {
		return bgroup;
	}
	
	public void setBgroup(String group) {
		this.bgroup = group;
	}

	public String getNominee() {
		return nominee;
	}
	
	public void setNominee(String nominee) {
		this.nominee = nominee;
	}

	public String getRelation() {
		return relation;
	}
	
	public void setRelation(String relation) {
		this.relation = relation;
	}

	public String getSex() {
		return sex;
	}
	
	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getNage() {
		return nage;
	}
	
	public void setNage(int nage) {
		this.nage = nage;
	}

	public String getDob() {
		return dob;
	}
	
	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getDoj() {
		return doj;
	}
	
	public void setDoj(String doj) {
		this.doj = doj;
	}

	public String getWtd() {
		return wtd;
	}
		public void setWtd(String wtd) {
		this.wtd = wtd;
	}

	public String getPic() {
		return pic;
	}
	
	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getPaytype() {
		return paytype;
	}
	
	public void setPaytype(String paytype) {
		this.paytype = paytype;
	}

	public int getDdno() {
		return ddno;
	}
		public void setDdno(int no) {
		this.ddno = no;
	}

	public String getDddate() {
		return dddate;
	}
	
	public void setDddate(String date) {
		this.dddate = date;
	}
	
	public String getDddrawnon() {
		return dddrawnon;
	}
	
	public void setDddrawnon(String drawnon) {
		this.dddrawnon = drawnon;
	}

	public float getAmount() {
		return amount;
	}
	
	public void setAmount(float amount) {
		this.amount = amount;
	}
		
	public String getDue() {
		return due;
	}
	
	public void setDue(String due) {
		if(due==null)
			this.due = "1";
		else{
			this.due="0";
		}
	}
	
	public String getSpouse() {
		return spouse;
	}
	
	public void setSpouse(String spouse) {
		this.spouse = spouse;
	}
	
	public float getRegFee() {
	 return regFee;
	   }
	
	public void setRegFee(float regfee) {
		this.regFee =regfee;
	}
	public String toString(){
		String value=distributorId+" , "+ introducerId+" , "+topId+" , "+	dname+" , "+
			 wdsp+" , "+ occupation+" , "+	address+" , "+	city+" , "+pincode+" , "+dist+" , "+
			 state+" , "+phone+" , "+mobile+" , "+email+" , "+bgroup+" , "+nominee+" , "+
			 relation+" , "+sex+" , "+nage+" , "+	dob+" , "+doj+" , "+wtd+" , "+pic+" , "+
			 paytype+" , "+ddno+" , "+dddate+" , "+dddrawnon+" , "+amount+" , "+
			 spouse+" , "+due+" , "+regFee;
		return value;
	}
	
}

package com.impact.mlm;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;

public class IncentiveVO {
Connection con=null;
Statement stmt=null;
ResultSet rs=null;
	
String distType;
String date;
double pi;
double  nd;
double  pd;
double  mo;
double smo;
double  mm;
double  zmm;
double  rmm;

public void setDistType(String distType){
	this.distType=distType;
}
public String getDistType() {
	return distType;
}

public void setPi(double pi){
	this.pi=pi;
}
public double getPi(){
	return pi;
}
 
public void setNd(double nd) {
	this.nd = nd;
}

public double getNd() {
	return nd;
}

public void setPd(double pd) {
	this.pd = pd;
}

public double getPd() {
	return pd;
}
public void setMo(double mo) {
	this.mo = mo;
}

public double getMo(){
	
	return mo;
   }
public void setSmo(double smo){
	
	 this.smo=smo;
	}
public double getSmo(){
	
	return smo;
	}
public void setMm(double mm){
	this.mm=mm;
  }
public double getMm(){
	return mm;
}

public void setZmm(double zmm){
	this.zmm=zmm;
  }
public double getZmm(){
	return zmm;
}

public void setRmm(double rmm){
	this.rmm=rmm;
  }
public double getRmm(){
	return rmm;
}

public boolean getIncentives(){
	try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:mydsn","pari","parivar");
		stmt=con.createStatement();
		rs=stmt.executeQuery("select * from incentivesetting where distributortype='"+getDistType()+"'");
		while(rs.next()){
			setPi(rs.getDouble("ND"));
			setPd(rs.getDouble("PD"));
			setMo(rs.getDouble("MO"));
			setSmo(rs.getDouble("SMO"));
			setMm(rs.getDouble("MM"));
			setZmm(rs.getDouble("ZMM"));
			setRmm(rs.getDouble("RMM"));
		}
	}catch(Exception e){
	}
	return false;
}
public boolean insertData()	{
	String sql= "update incentivesetting set ND=" + getPi()+ ", PD=" + getPd() + ", MO=" +getMo()+ ", SMO="+ getSmo() 
                          + ",MM=" + getMm() + ", ZMM=" + getZmm() + ",RMM="+ getRmm() + 
                           " where DISTRIBUTORTYPE='" + getDistType()+ "'";
	System.out.println("Query to be executed : "+sql);
	try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:mydsn","pari","parivar");
		stmt=con.createStatement();
		int i=stmt.executeUpdate(sql);
		return true;
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(rs!=null) rs.close();
			if(stmt!=null) stmt.close();
			if(con!=null) con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	return false;
	}
}


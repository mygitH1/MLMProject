package com.impact.mlm;

import java.sql.*;

public class RegFeeSetting 
{
	double bottlecost;
	double bottlecostincentive;
	double discount;
	int regfees;
	double servicetax;
	double total;
	Connection con;
	Statement stmt;
	ResultSet rs;
	
	public RegFeeSetting(){}
	public void setBottlecost(double bc){
		bottlecost=bc;
	}
	public double getBottlecost(){
		return bottlecost;
	}
	public void setBottlecostincentive(double bci){
		bottlecostincentive=bci;
	}
	public double getBottlecostincentive(){
		return bottlecostincentive;
	}
	public void setDiscount(double dis){
		discount=dis;
	}
	public double getDiscount(){
		return discount;
	}
	public void setRegfees(int fee){
		regfees=fee;
	}
	public int getRegfees(){
		return regfees;
	}
	public void setServicetax(double st){
		servicetax=st;
	}
	public double getServicetax(){
		return servicetax;
	}
	public double getTotal(){
		total=((getRegfees()+getBottlecost())-((getDiscount()/100.0) * getBottlecost()));
		return total;
	}
	public void setTotal(double tot){
		total=tot;
	}
	public boolean getRegFeeSetting(){
		try{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			con=DriverManager.getConnection("jdbc:odbc:mydsn","pari","parivar");
			stmt=con.createStatement();
			rs=stmt.executeQuery("select * from registrationsettings");
			if(rs.next()){
				System.out.println("record retched successfully.....!");
				setBottlecost(rs.getDouble(2));
				setBottlecostincentive(rs.getDouble(3));
				setDiscount(rs.getDouble(4));
				setTotal(rs.getDouble(5));
				setRegfees(rs.getInt(6));
				setServicetax(rs.getDouble(7));
				return true;
			}
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
	

	public boolean insertData(){
		String sql="update registrationsettings set IMPLEMENTATIONDATE=to_date(sysdate,'DD-MM-YYYY'),BOTTLECOST="+
							getBottlecost()+",BOTTLECOSTINCENTIVE="+getBottlecostincentive()+
							",DISCOUNT="+getDiscount()+",TOT="+	getTotal()+
							",REGFEES="+getRegfees()+",SERVICETAX="+getServicetax();
		System.out.println("Query : "+sql);
		try{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			con=DriverManager.getConnection("jdbc:odbc:mydsn","pari","parivar");
			stmt=con.createStatement();
			int i=stmt.executeUpdate(sql);
			if(i==1) {
				System.out.println("Registration fee updated successfully....!");
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(stmt!=null) stmt.close();
				if(con!=null) con.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return false;
	}
}

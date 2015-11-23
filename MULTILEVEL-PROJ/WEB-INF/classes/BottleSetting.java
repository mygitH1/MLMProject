package com.impact.mlm;

import java.sql.*;
import java.util.*;

public class  BottleSetting
{
	Connection con;
	Statement stmt;
	ResultSet rs;
	int productid;
	int qty;
	String productname;
	double productrate;
	String productdescription;
	Vector list;
	public BottleSetting(){}
	public void setProductid(int pid){
		productid=pid;
	}	
	public int getProductid(){
		return productid;
	}
	public void setProductname(String name){
		productname=name;
	}
	public String getProductname(){
		return productname;
	}
	public void setProductrate(double rate){
		productrate=rate;
	}
	public double getProductrate(){
		return productrate;
	}
	public void setQty(int qty){
		this.qty=qty;
	}
	public int getQty(){
		return qty;
	}
	public void setProductdescription(String desc){
		productdescription=desc;
	}
	public String getProductdescription(){
		return productdescription;
	}
	public Collection getProductList(){
		try{
		list=new Vector();
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:mydsn","pari","parivar");
		stmt=con.createStatement();
		rs=stmt.executeQuery("select distinct(productid) from  products order by productid");
		while(rs.next()){
				list.addElement(new Integer(rs.getInt(1)));
			}
			return list;
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
	return null;
}

	public boolean getBottleSetting(){
	try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:mydsn","pari","parivar");
		stmt=con.createStatement();
		rs=stmt.executeQuery("select * from  products where productid="+getProductid());
		while(rs.next()){
			System.out.println("Record fetched successfully.....!");
			setProductid(rs.getInt(1));
			setProductname(rs.getString(2));
			setProductrate(rs.getDouble(3));
			setProductdescription(rs.getString(4));
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
public boolean insertData()	{
	String sql= "update products set PRODUCTNAME='" + getProductname()+ 
						"', PRODUCTRATE=" + getProductrate() + 
						", PRODUCTDESCRIPTION='" +getProductdescription()+
						"' where PRODUCTID="+getProductid();
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

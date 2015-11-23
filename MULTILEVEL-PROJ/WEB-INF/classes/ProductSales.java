package com.impact.mlm;

import java.sql.*;
import java.util.*;

public class ProductSales
{
	int saleid;
	int distributorid;
	int qty;
	int productid;
	Connection con=null;
	Statement stmt=null;
	ResultSet rs=null;
	Vector productids;
	public ProductSales()	{	}

	public void setSaleid(int saleid){
		this.saleid=saleid;
	}
	public void setDistributorid(int distid){
		this.distributorid=distid;
	}
	public void setQty(int qty){
		this.qty=qty;
	}
	public void setProductid(int pid){
		this.productid=pid;
	}
	public int getSaleid(){
		return saleid;
	}
	public int getDistributorid(){
		return distributorid;
	}
	public int getQty(){
		return qty;
	}
	public int getProductid(){
		return productid;
	}
	public Vector getProductidList(){
		try{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			con=DriverManager.getConnection("jdbc:odbc:mydsn","pari","parivar");
			stmt=con.createStatement();
			rs=stmt.executeQuery("select distinct productid from products");
			productids=new Vector();
			while(rs.next()){
				productids.addElement(new Integer(rs.getInt("productid")));
			}
			return productids;
		}catch(Exception e){
			e.printStackTrace();
		}	finally{
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
	public int getSalesId(){
			try{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			con=DriverManager.getConnection("jdbc:odbc:mydsn","pari","parivar");
			stmt=con.createStatement();
			rs=stmt.executeQuery("select max(saleid) saleid from sales order by saleid");
			if(rs.next()){
				setSaleid(rs.getInt("saleid"));
			}else{
				setSaleid(100);
			}
			return getSaleid()+1;
		}catch(Exception e){
			e.printStackTrace();
		}	finally{
			try{
			if(rs!=null) rs.close();
			if(stmt!=null) stmt.close();
			if(con!=null) con.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return -1;
	}

	public boolean saleProduct(){
		try{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			con=DriverManager.getConnection("jdbc:odbc:mydsn","pari","parivar");
			stmt=con.createStatement();
			stmt.addBatch("insert into sales values("+getSaleid()+","+getDistributorid()+","+getQty()+",to_date(sysdate,'dd-mm-yyyy'),"+getProductid()+")");
			stmt.addBatch("delete from products where productid="+getProductid());
			int[] i=stmt.executeBatch();
			if(i[0]==1 && i[1]==1){
				System.out.println("product soled successfully....!");
				return true;
			}
			return false;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}finally{
			try{
			//if(rs!=null) rs.close();
			if(stmt!=null) stmt.close();
			if(con!=null) con.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
	}
}

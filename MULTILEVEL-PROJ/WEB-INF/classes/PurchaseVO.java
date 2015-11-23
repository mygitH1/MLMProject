
package com.impact.mlm;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.sql.DriverManager;
import java.util.*;
public class PurchaseVO
{
    Connection con=null;
	Statement stmt=null;
	PreparedStatement pst=null;
	ResultSet rs=null;
    
   private int distributorId;
   private String distributorName;
   private int productId;
   private int qty;
   private double amount;

public void setDistributorId(int distributorId){
	this.distributorId=distributorId;
}
public int getDistributorId() {
	return distributorId;
}

public void setDistributorName(String distributorName){
	this.distributorName=distributorName;
}
public String getDistributorName() {
	return distributorName;
}

public void setProductId(int productId){
	this.productId=productId;
}
public int getProductId() {
	return productId;
}
public void setQty(int qty){
	this.qty=qty;
}
public int getQty() {
	return qty;
}

public Collection getProducts(){
	Vector v =new Vector();
		try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:mydsn","pari","parivar");
		stmt=con.createStatement();
		rs=stmt.executeQuery("select productid  from products");
		while(rs.next()){
			   v.addElement(new Integer(rs.getInt(1)));
		     }
			 return v;
			
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(rs!=null)	rs.close();
			if(stmt!=null)	stmt.close();
			if(con!=null) con.close();
		}catch(Exception e1){
			e1.printStackTrace();
	       }
	 }
	return null;
}
public boolean setProducts(){
try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:mydsn","pari","parivar");
		stmt=con.createStatement();
		String sql1="insert into purchases values(to_date(sysdate,'DD-MM-YYYY'),"+
							getDistributorId()+",'"+getDistributorName()+"','"+getProductId()+
							"',"+getQty()+")";
		String sql2="delete from products where productid="+getProductId();
		System.out.println(sql1);
		System.out.println(sql2);
		stmt.addBatch(sql1);
		stmt.addBatch(sql2);
	    int[] i=stmt.executeBatch();
		if(i[0]==1 && i[1]==1){
        System.out.println("records inserted successfully");
		return true;
		}
		return false;
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(stmt!=null)	stmt.close();
			if(con!=null)	 con.close();
		  }catch(Exception e1){
			e1.printStackTrace();
	        }
	 }
 return false;
}
}
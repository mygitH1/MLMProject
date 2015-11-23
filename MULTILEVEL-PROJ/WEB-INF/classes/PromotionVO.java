package com.impact.mlm;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;

public class PromotionVO {
Connection con=null;
Statement stmt=null;
ResultSet rs=null;
String distType;
int targetsales;
String leveltoproduce;
int requiredjoins;
int targetduration;

public void setDistType(String type){
	distType=type;
}
public String getDistType(){
	return distType;
}

public void setTargetsales(int targetSales){
	this.targetsales=targetSales;
}
public int getTargetsales() {
	return targetsales;
}

 
public void setLeveltoproduce(String levelToProduce) {
	this.leveltoproduce = levelToProduce;
}

public String getLeveltoproduce() {
	return leveltoproduce;
}

public void setRequiredjoins(int requiredJoins)
	{
	this.requiredjoins= requiredJoins;
	}
public int getRequiredjoins()
	{
	 return requiredjoins;
	}
public void setTargetduration(int targetDuration)
	{
	 this.targetduration=targetDuration;
	}
public int getTargetduration()
	{
	return targetduration;
	}

public boolean getPromotionSetting(){
	try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:mydsn","pari","parivar");
		stmt=con.createStatement();
		rs=stmt.executeQuery("select * from promotionsetting where leveltype='"+getDistType()+"'");
		int i=0;
		if(rs.next()){
			setTargetsales(rs.getInt("targetsales"));
			setLeveltoproduce(rs.getString("leveltoproduce"));
			setRequiredjoins(rs.getInt("requiredjions"));
			setTargetduration(rs.getInt("targetduration"));
			System.out.println("Row number : "+i++);
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	return false;
}

	public boolean updateData()
	{
	String sql="update promotionsetting set targetsales='" + getTargetsales()+ 
		"', leveltoproduce='" + getLeveltoproduce() + "' ,requiredjions='" +getRequiredjoins()+ 
		"', targetduration='"+ getTargetduration()+ "'";
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
	} //method
	}
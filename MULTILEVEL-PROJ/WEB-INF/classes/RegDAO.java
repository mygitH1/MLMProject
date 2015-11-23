package com.impact.mlm;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Hashtable;
import java.util.Vector;

import java.io.*;

import com.impact.mlm.RegistrationVO;

public class RegDAO {
	Connection con;
	PreparedStatement ps;
	Statement stmt;
	ResultSet rs;
	Hashtable ht;
	Hashtable top_intro;
	Vector v,user_pass,name_id_intro;
	public RegDAO() {
		super();
    }
	public Vector getNameIdIntroducer(){
		return name_id_intro;
	}
	public boolean connect() throws Exception{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:mydsn","pari","parivar");
		if(con!=null) return true;
		return false;
	}
	public void disconnect() throws Exception{
		if(rs!=null) rs.close();
		if(stmt!=null) stmt.close();
		if(ps!=null) ps.close();
		if(con!=null) con.close();
	}
	public boolean loginCheck(String uname,String password) throws Exception{
		try{
			if(connect()){
				String sql="SELECT uname FROM logins WHERE uname='"+uname+"' and password='"+password+"'";
				System.out.println("Login check Query : "+sql);
				rs=(con.createStatement()).executeQuery(sql);
				if(rs.next()){
					rs=(con.createStatement()).executeQuery("SELECT distributorid,dname,introducerid FROM registration where wdsp='"+uname+"'");
					name_id_intro=new Vector();
					if(rs.next()){
						name_id_intro.addElement(new Integer(rs.getInt("distributorid")));
						name_id_intro.addElement(rs.getString("dname"));
						name_id_intro.addElement(rs.getString("introducerid"));
						return true;
					}					
				}
				return false;
			}else{
				throw new Exception("Connection to Database failed.....");
			}
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}finally{
			try{
				disconnect();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
	public Vector getUserPassword(){
		return user_pass;
	}

	public RegistrationVO getDistributorDetails(RegistrationVO regvo) throws Exception{
		try{
			if(connect()){
				stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
				rs=stmt.executeQuery("select * from registration where distributorid="+regvo.getDistributorId());
				if(rs.next()){
				regvo.setIntroducerId(rs.getString(2));				
				regvo.setTopId(rs.getString(3));				
				regvo.setDname(rs.getString(4));		
				regvo.setWdsp(rs.getString(5));
				regvo.setOccupation(rs.getString(6));				
				regvo.setAddress(rs.getString(7));				
				regvo.setCity(rs.getString(8));				
				regvo.setPincode(rs.getString(9));				
				regvo.setDist(rs.getString(10));				
				regvo.setState(rs.getString(11));				
				regvo.setPhone(rs.getString(12));				
				regvo.setMobile(rs.getString(13));				
				regvo.setEmail(rs.getString(14));				
				regvo.setBgroup(rs.getString(15));				
				regvo.setNominee(rs.getString(16));				
				regvo.setRelation(rs.getString(17));				
				regvo.setSex(rs.getString(18));				
				regvo.setNage(rs.getInt(19));				
				regvo.setDob(rs.getString(20));				
				regvo.setDoj(rs.getString(21));				
				regvo.setWtd(rs.getString(22));				
				regvo.setPic(rs.getString(23));				
				regvo.setPaytype(rs.getString(24));				
				regvo.setDdno(rs.getInt(25));				
				regvo.setDddate(rs.getString(26));				
				regvo.setDddrawnon(rs.getString(27));				
				regvo.setAmount(rs.getFloat(28));				
				regvo.setRegFee(rs.getFloat(29));				
				regvo.setSpouse(rs.getString(30));				
				regvo.setDue(String.valueOf(rs.getInt(31)));				
				System.out.println("Record is retrieved from database...!");
				}
			}else{
				throw new Exception("Connection to database failed.....");
			}
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				try{
					disconnect();
					}catch(Exception e){
						e.printStackTrace();
					}
			}
		return regvo;
	}
	public String prepareList(String introid) throws Exception
	{
		ht=new Hashtable();
		top_intro=new Hashtable();
		v=new Vector();
		try{
			if(connect()){
			stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			rs=stmt.executeQuery("select distributorid,introducerid from registration");
			if(rs!=null){
				while(rs.next()){
				v.addElement(rs.getString("distributorid"));
			}
			System.out.println("List of elements : "+v);
			rs.beforeFirst();
			while(rs.next()){
				ht.put(v.get(v.indexOf(rs.getString("distributorid"))),v.get(v.indexOf(rs.getString("introducerid"))));
				
			}
			
			System.out.println("List of chain : "+ht);
			String name=getTopId(introid);
			System.out.println(name);
			return name;
		}
		}else{
			throw new Exception("Connection to Database failed....");
		}
	}catch(Exception e){
			e.printStackTrace();
			return null;
		}finally{
			try{
				disconnect();
			}catch(Exception e){		}
		}
		return null;
	}

	public String getTopId(String distid){
		if(getIntroducerId(distid).equals(distid)){
			return distid;
		}
		return (String) getTopId(getIntroducerId(distid));
	}
	public String getIntroducerId(String distid){
		return (String) ht.get(v.get(v.indexOf(distid)));
	}

	public boolean insertRegisterInfo(RegistrationVO regvo)throws Exception
	{
	try{
		if(connect()){
			String uname="MLM"+regvo.getDistributorId();
			String password="MLM"+regvo.getIntroducerId();
			regvo.setWdsp(uname);
			con.setAutoCommit(false);
		System.out.println("******In insertRegisterInfo Method*******");
		ps = con.prepareStatement("insert into Registration values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,TO_DATE(?, 'DD-MM-YYYY'),TO_DATE(?,'DD-MM-YYYY'),?,?,?,?,TO_DATE(?,'DD-MM-YYYY'),TO_DATE(?,'DD-MM-YYYY'),?,?,?,?)");
		ps.setInt(1,regvo.getDistributorId());
		ps.setString(2,regvo.getIntroducerId());
		ps.setString(3,regvo.getTopId());
        ps.setString(4,regvo.getDname());
		ps.setString(5,regvo.getWdsp());
		ps.setString(6,regvo.getOccupation());
		ps.setString(7,regvo.getAddress());
		ps.setString(8,regvo.getCity());
		ps.setString(9,regvo.getPincode());
		ps.setString(10,regvo.getDist());
		ps.setString(11,regvo.getState());
		ps.setString(12,regvo.getPhone()); 
		ps.setString(13,regvo.getMobile());
		ps.setString(14,regvo.getEmail());
		ps.setString(15,regvo.getBgroup());
		ps.setString(16,regvo.getNominee());
		ps.setString(17,regvo.getRelation());
		ps.setString(18,regvo.getSex());
		ps.setInt(19,regvo.getNage());
		ps.setString(20,regvo.getDob());
		ps.setString(21,regvo.getDoj());
		ps.setString(22,regvo.getWtd());
		ps.setString(23,regvo.getPic());
		ps.setString(24,regvo.getPaytype());
		ps.setInt(25,regvo.getDdno());
		ps.setString(26,regvo.getDddate());
		ps.setString(27,regvo.getDddrawnon());
		ps.setFloat(28,regvo.getAmount());
		ps.setFloat(29,regvo.getRegFee());
		ps.setString(30,regvo.getSpouse());
		String due=regvo.getDue();
		System.out.println("Due value : "+due);
		ps.setInt(31,Integer.parseInt(regvo.getDue()));
		int i=ps.executeUpdate();
		if(i==1){
			int productid,saleid,receiptno;
			String sql;
			stmt=con.createStatement();
			rs=stmt.executeQuery("select max(productid) productid from products");
			if(rs.next()) {
				productid=rs.getInt("productid");
			}else{
				con.rollback();
				return false;
			}
			rs=stmt.executeQuery("select max(saleid) saleid from sales");
			if(rs!=null) {
				rs.next();
				saleid=rs.getInt("saleid");
			}else{
				saleid=0;
			}
			rs=stmt.executeQuery("select max(receiptno) receiptno from reciepts");
			if(rs!=null) {
				rs.next();
				receiptno=rs.getInt("receiptno");
			}else{
				receiptno=0;
			}
			saleid+=1;
			receiptno+=1;
			System.out.println("Product id : "+productid+" , Saleid : "+saleid+" , receiptno : "+receiptno);
			sql="insert into logins values('"+uname+"','"+password+"','ND')";
			i +=stmt.executeUpdate("insert into logins values('"+uname+"','"+password+"','ND')");
			System.out.println("Executed query : "+sql);
			sql="insert into sales vales ("+saleid+","+regvo.getDistributorId()+",1,to_date(sysdate,'dd-mm-yyyy'),"+productid+")";
			i+=stmt.executeUpdate("insert into sales values ("+saleid+","+regvo.getDistributorId()+",1,to_date(sysdate,'dd-mm-yyyy'),"+productid+")");
			System.out.println("Executed query : "+sql);
			sql="insert into reciepts values("+receiptno+","+regvo.getDistributorId()+", 'New Sale','"+regvo.getPaytype()+"',"+regvo.getAmount()+",to_date(sysdate,'dd-mm-yyyy'),"+saleid+","+regvo.getDue()+","+productid+")";
			i+=stmt.executeUpdate("insert into reciepts values("+receiptno+","+regvo.getDistributorId()+", 'New Sale','"+regvo.getPaytype()+"',"+regvo.getAmount()+",to_date(sysdate,'dd-mm-yyyy'),"+saleid+","+regvo.getDue()+","+productid+")");
			System.out.println("Executed query : "+sql);
			sql="delete from products where productid="+productid;
			i+=stmt.executeUpdate("delete from products where productid="+productid);
			System.out.println("Executed query : "+sql);
			System.out.println("Number of records effected : "+i);
			if(i>=4){
					user_pass=new Vector();
					user_pass.addElement(uname);
					user_pass.addElement(password);
					System.out.println("Database updated successfully....");
					con.commit();
					return true;
			}else{
				System.out.println("Record deleted : "+stmt.executeUpdate("delete from registration where distributorid="+regvo.getDistributorId()));
				con.rollback();
				return false;
			}
		}else{
			con.rollback();
			throw new Exception("Connection to database failed.....");
		}
		}
	}catch(Exception ex)	{
			con.rollback();
			System.out.println("SQLException" + ex);
			ex.printStackTrace();
			return false;
		}finally{
			try{
				disconnect();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return false;
	}//method
}

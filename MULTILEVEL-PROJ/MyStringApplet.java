import java.util.*;
import java.sql.*;
import javax.swing.tree.*;

public class  MyStringApplet
{
		static Hashtable ht;
		static Vector v;
		static DefaultMutableTreeNode dist,intro,comp;
		static DefaultMutableTreeNode root;
		
	public static DefaultMutableTreeNode findTopID(DefaultMutableTreeNode trackID){

		DefaultMutableTreeNode topID=(DefaultMutableTreeNode)ht.get(trackID);
		if(topID.equals(trackID)){
			return trackID;
		}
		return findTopID(topID);
	}

	public static DefaultMutableTreeNode toTree(){
		Set keys=ht.keySet();
		Iterator it=keys.iterator();
		root=new DefaultMutableTreeNode("Root");
		while(it.hasNext()){
		modifiedTree((DefaultMutableTreeNode) it.next());
		}
		return root;
	}

	public static void modifiedTree(DefaultMutableTreeNode trackID){
		if(findIntroducerID(trackID).equals(trackID)){
				root.add(trackID);
		}else{
			intro=findIntroducerID(trackID);
			intro.add(trackID);
			modifiedTree(intro);
		}
	}

	public static DefaultMutableTreeNode findIntroducerID(DefaultMutableTreeNode trackID){
		return (DefaultMutableTreeNode)ht.get(trackID);
	}

	public MyStringApplet() throws Exception
	{
		Connection con=null;
		Statement stmt=null;
		ResultSet rs=null;
		ht=new Hashtable();
		v=new Vector();
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:mydsn","pari","parivar");
		if(con!=null){
			stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			rs=stmt.executeQuery("select distributorid,introducerid from registration");
			while(rs.next()){
					String distid=rs.getString("distributorid");
					String introid=rs.getString("introducerid");
					dist=new DefaultMutableTreeNode(distid);
					intro=new DefaultMutableTreeNode(introid);
					v.addElement(dist);
					Iterator it=v.iterator();
					while(it.hasNext()){
						comp=(DefaultMutableTreeNode)it.next();
						if((comp.toString()).equals(intro.toString())){
							ht.put(dist,(DefaultMutableTreeNode)v.get(v.indexOf(comp)));
						}
					}
				}
			}
		}
	}		
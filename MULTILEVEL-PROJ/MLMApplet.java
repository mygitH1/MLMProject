import java.awt.event.*;
import java.awt.*;
import javax.swing.*;

public class MLMApplet extends JApplet  
{
	MyStringApplet mlmid;
	JTree tree;
	Container cont;
	public void init() {
		try{
		mlmid=new MyStringApplet();
	//	mlmid.main();
		tree=new JTree(mlmid.toTree());
		cont=getContentPane();
		cont.add(new JScrollPane(tree));
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public void start() {
		try{
		
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public void stop() {}
	public void destroy() {}

}
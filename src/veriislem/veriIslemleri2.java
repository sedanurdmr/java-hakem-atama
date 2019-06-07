package veriislem;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import models.uyeler;
public class veriIslemleri2 {
	private Connection con;
	private String driver="com.mysql.jdbc.Driver";
	private String url="jdbc:mysql://127.0.0.1:3306/hakem?characterEncoding=ISO-8859-9"; 
	private Statement stm;
	private ResultSet resultSet = null;

	public veriIslemleri2()
	{
		try { Class.forName(driver).newInstance(); 
		System.out.println("JDBC surucu basari ile yüklendi."); } catch (Exception e) { System.out.println("JDBC surucu Yüklenemedi. Hata:"+e.getMessage()); System.exit(0); }
		try{con=DriverManager.getConnection(url,"root","0000");System.out.println("Veritabanýna baðlanýldý.");}catch (Exception e) { System.out.println("Veri Tabanýna Baðlanýlamadý. Hata:"+e.getMessage()); System.exit(0); }
		try {stm=con.createStatement();}catch (Exception e) { System.out.println("Hata:"+e.getMessage()); System.exit(0); }
	}
	
	public boolean insertData(uyeler obje)
	{
		String uyeadi=obje.getUyeadi();
		String uyesoyadi=obje.getUyesoyadi();
		String uyeemail=obje.getUyeemail();
		String uyebrans=obje.getUyebrans();
		String uyemakale=obje.getUyemakale();
		try
		{
			String query = "INSERT INTO uyeler(uyeadi,uyesoyadi,uyeemail,uyebrans,uyemakale) values('"+uyeadi+"','"+uyesoyadi+"','"+uyeemail+"','"+uyebrans+"','"+uyemakale+"')"; 
			stm.executeUpdate(query); 
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); System.exit(0); return false;}
	}
	
	public ResultSet selectAllData()
	{		
		try
		{
			String query = "SELECT * FROM uyeler";
			resultSet=stm.executeQuery(query);
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());}
		return resultSet;
	}
	
	public ResultSet selectData(int id)
	{		
		try
		{
			String query = "SELECT * FROM uyeler WHERE uyeid='"+id+"'";
			resultSet=stm.executeQuery(query);
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());}
		return resultSet;
	}
	
	public boolean deleteData(int id)
	{
		try
		{
			String query = "DELETE FROM uyeler WHERE uyeid='"+id+"'";
			stm.executeUpdate(query);
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
	}
	
	public boolean updateData(uyeler obje,int id)
	{
		String uyeadi=obje.getUyeadi();
		String uyesoyadi=obje.getUyesoyadi();
		String uyeemail=obje.getUyeemail();
		String uyebrans=obje.getUyebrans();
		String uyemakale=obje.getUyemakale();
		try
		{
			String query = "UPDATE uyeler SET uyeadi='"+uyeadi+"',uyesoyadi='"+uyesoyadi+"',uyeemail='"+uyeemail+"',uyebrans='"+uyebrans+"',uyemakale='"+uyemakale+"' WHERE uyeid='"+id+"'";
			stm.executeUpdate(query); 
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
	}
}

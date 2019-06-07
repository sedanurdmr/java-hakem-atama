package veriislem;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import models.ogretmen;
public class veriIslemleri {
	private Connection con;
	private String driver="com.mysql.jdbc.Driver";
	private String url="jdbc:mysql://127.0.0.1:3306/hakem?characterEncoding=ISO-8859-9"; 
	private Statement stm;
	private ResultSet resultSet = null;

	public veriIslemleri()
	{
		try { Class.forName(driver).newInstance(); 
		System.out.println("JDBC surucu basari ile yüklendi."); } catch (Exception e) { System.out.println("JDBC surucu Yüklenemedi. Hata:"+e.getMessage()); System.exit(0); }
		try{con=DriverManager.getConnection(url,"root","0000");System.out.println("Veritabanýna baðlanýldý.");}catch (Exception e) { System.out.println("Veri Tabanýna Baðlanýlamadý. Hata:"+e.getMessage()); System.exit(0); }
		try {stm=con.createStatement();}catch (Exception e) { System.out.println("Hata:"+e.getMessage()); System.exit(0); }
	}
	public boolean insertData(ogretmen obje)
	{
		String ogradi=obje.getOgradi();
		String ogrsoyadi=obje.getOgrsoyadi();
		String ogremail=obje.getOgremail();
		String ogrbrans=obje.getOgrbrans();
		String ogrpuan=obje.getOgrpuan();
		
		try
		{
			String query = "INSERT INTO ogretmen(ogradi,ogrsoyadi,ogremail,ogrbrans,ogrpuan) values('"+ogradi+"','"+ogrsoyadi+"','"+ogremail+"','"+ogrbrans+"','"+ogrpuan+"')"; 
			stm.executeUpdate(query); 
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); System.exit(0); return false;}
		
	}
	public ResultSet selectAllData()
	{		
		try
		{
			String query = "SELECT * FROM ogretmen";
			resultSet=stm.executeQuery(query);
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());}
		return resultSet;
	}
	
	public ResultSet selectData(int id)
	{		
		try
		{
			String query = "SELECT * FROM ogretmen WHERE ogrid='"+id+"'";
			resultSet=stm.executeQuery(query);
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());}
		return resultSet;
	}
	
	public boolean deleteData(int id)
	{
		try
		{
			String query = "DELETE FROM ogretmen WHERE ogrid='"+id+"'";
			stm.executeUpdate(query);
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
	}
	public boolean updateData(ogretmen obje,int id)
	{
		String ad=obje.getOgradi();
		String soyad=obje.getOgrsoyadi();
		String email=obje.getOgremail();
		String brans=obje.getOgrbrans();
		String puan=obje.getOgrpuan();
		try
		{
			String query = "UPDATE ogretmen SET ogradi='"+ad+"',ogrsoyadi='"+soyad+"',ogremail='"+email+"',ogrbrans='"+brans+"',ogrpuan='"+puan+"' WHERE ogrid='"+id+"'";
			stm.executeUpdate(query); 
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
	}
}

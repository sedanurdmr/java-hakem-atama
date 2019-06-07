<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean id="ogretmenEkle" class="models.ogretmen"></jsp:useBean>
<jsp:useBean id="veritabaninesne" class="veriislem.veriIslemleri"></jsp:useBean>
<% 
request.setCharacterEncoding("ISO-8859-9"); 
String ogradi=request.getParameter("ogradi");
String ogrsoyadi=request.getParameter("ogrsoyadi");
String ogremail=request.getParameter("ogremail");
String ogrbrans=request.getParameter("ogrbrans");
String ogrpuan=request.getParameter("ogrpuan");
ogretmenEkle.setOgradi(ogradi);
ogretmenEkle.setOgrsoyadi(ogrsoyadi);
ogretmenEkle.setOgremail(ogremail);
ogretmenEkle.setOgrbrans(ogrbrans);
ogretmenEkle.setOgrpuan(ogrpuan);

boolean sonuc=veritabaninesne.insertData(ogretmenEkle);
if (sonuc==true){
	out.println("Kayit basarili bir şekilde eklenmiştir");
	response.sendRedirect("ogretmenListele.jsp");
}
else{
	out.println("kayit eklemede hata var");
	response.sendRedirect("ogretmenListele.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
</body>
</html>
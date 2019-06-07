<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean id="uyeEkle" class="models.uyeler"></jsp:useBean>
<jsp:useBean id="veritabaninesne" class="veriislem.veriIslemleri2"></jsp:useBean>
<% 
request.setCharacterEncoding("ISO-8859-9"); 
String uyeadi=request.getParameter("uyeadi");
String uyesoyadi=request.getParameter("uyesoyadi");
String uyeemail=request.getParameter("uyeemail");
String uyebrans=request.getParameter("uyebrans");
String uyemakale=request.getParameter("uyemakale");
uyeEkle.setUyeadi(uyeadi);
uyeEkle.setUyesoyadi(uyesoyadi);
uyeEkle.setUyeemail(uyeemail);
uyeEkle.setUyebrans(uyebrans);
uyeEkle.setUyemakale(uyemakale);

boolean sonuc=veritabaninesne.insertData(uyeEkle);
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
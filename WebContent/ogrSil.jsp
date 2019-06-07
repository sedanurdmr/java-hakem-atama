<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean id="ogretmenEkle" class="models.ogretmen"></jsp:useBean>
<jsp:useBean id="veritabaninesne" class="veriislem.veriIslemleri"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:useBean id="veritabaný_nesnesi" class="veriislem.veriIslemleri"></jsp:useBean>
</head>
<body>
<table id="myTable">
  <% 
  int id=Integer.parseInt(request.getParameter("id"));
  boolean sonuc=veritabaný_nesnesi.deleteData(id);
  if (sonuc==true){
	out.println("Silindi");
	response.sendRedirect("ogretmenListele.jsp");
}
else{
	out.println("Hata");
    response.sendRedirect("ogretmenListele.jsp");
}
  %>
</head>
<body>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean id="uyeEkle" class="models.uyeler"></jsp:useBean>
<jsp:useBean id="veritabaninesne" class="veriislem.veriIslemleri2"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:useBean id="veritaban�_nesnesi" class="veriislem.veriIslemleri2"></jsp:useBean>
</head>
<body>
<table id="myTable">
  <%
  int id=Integer.parseInt(request.getParameter("id"));
  boolean sonuc=veritaban�_nesnesi.deleteData(id);
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
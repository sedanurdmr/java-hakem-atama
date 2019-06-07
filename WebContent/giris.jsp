<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2 align="center"> Validating User Name and Password </h2>
 
<%
  String str1=request.getParameter("t1");
  String str2=request.getParameter("t2");
 
  if(str1.equalsIgnoreCase("a") && str2.equals("a"))
  {
 response.sendRedirect("ogretmenListele.jsp");   
  }
  else
  {
 response.sendRedirect("giris.html");   
  }
%>
</body>
</html>
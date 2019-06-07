<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<% request.setCharacterEncoding("ISO-8859-9"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="css/Form.css" rel="stylesheet" type="text/css">
</head>
<body>
<form action="uyelerkayit.jsp" method="post">
Ad<input type="text" name="uyeadi" value=""> <br>
Soyad<input type="text" name="uyesoyadi" value=""><br>
E-mail<input type="text" name="uyeemail" value=""><br>
Branþ<input type="text" name="uyebrans" value=""><br>
Makale<input type="text" name="uyemakale" value=""><br>
<input type="submit" name="Ekle" value="Kullanýcý Bilgilerini Kaydet">
</body>
</form>
</html>
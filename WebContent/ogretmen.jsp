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
<form action="ogretmenkayit.jsp" method="post">
Ad<input type="text" name="ogradi" value=""> <br>
Soyad<input type="text" name="ogrsoyadi" value=""><br>
E-mail<input type="text" name="ogremail" value=""><br>
Bran�<input type="text" name="ogrbrans" value=""><br>
Puan<input type="text" name="ogrpuan" value=""><br>
<input type="submit" name="Ekle" value="��retmen Bilgilerini Kaydet">
</body>
</form>
</html>
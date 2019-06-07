<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:useBean id="uyeGuncelle" class="models.uyeler" scope="session" ></jsp:useBean>
<jsp:useBean id="islemler" class="veriislem.veriIslemleri2" scope="session"></jsp:useBean>
</head>
<body>
<%
request.setCharacterEncoding("ISO-8859-9");
String ad=request.getParameter("uyeadi");
String soyad=request.getParameter("uyesoyadi");
String email=request.getParameter("uyeemail");
String brans=request.getParameter("uyebrans");
String makale=request.getParameter("uyemakale");
uyeGuncelle.setUyeadi(ad);
uyeGuncelle.setUyesoyadi(soyad);
uyeGuncelle.setUyeemail(email);
uyeGuncelle.setUyebrans(brans);
uyeGuncelle.setUyemakale(makale);
int id=Integer.parseInt(String.valueOf(session.getAttribute("uyeid")));
boolean islemSonucu=islemler.updateData(uyeGuncelle,id);
if (islemSonucu==true)
	out.println("Updated");
else
	out.println("Error");
%>
</body>
</html>
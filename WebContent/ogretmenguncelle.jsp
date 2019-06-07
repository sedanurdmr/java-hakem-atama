<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:useBean id="ogrGuncelle" class="models.ogretmen" scope="session" ></jsp:useBean>
<jsp:useBean id="islemler" class="veriislem.veriIslemleri" scope="session"></jsp:useBean>
</head>
<body>
<%
request.setCharacterEncoding("ISO-8859-9");
String ad=request.getParameter("ad");
String soyad=request.getParameter("soyad");
String email=request.getParameter("email");
String brans=request.getParameter("brans");
String puan=request.getParameter("puan");
ogrGuncelle.setOgradi(ad);
ogrGuncelle.setOgrsoyadi(soyad);
ogrGuncelle.setOgremail(email);
ogrGuncelle.setOgrbrans(brans);
ogrGuncelle.setOgrpuan(puan);
int id=Integer.parseInt(String.valueOf(session.getAttribute("ogrid")));
boolean islemSonucu=islemler.updateData(ogrGuncelle,id);
if (islemSonucu==true){
	out.println("Updated");
	response.sendRedirect("ogretmenListele.jsp");
}
else{
	out.println("Error");
    response.sendRedirect("ogretmenListele.jsp");
}
%>
</body>
</html>
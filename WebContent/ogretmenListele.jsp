<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<jsp:useBean id="Listele" class="veriislem.veriIslemleri"></jsp:useBean>
<jsp:useBean id="Listele2" class="veriislem.veriIslemleri2"></jsp:useBean>
<link href="css/Form.css" rel="stylesheet" type="text/css">
</head>
<body>
<form action="">
<div class="container">
<table id="myTabl">
<td><a href='ogretmen.jsp?id=' class="btn btn-secondary" style="font-size:20px;">Ogretmen Ekle</a></td>
<td><a href='uyeler.jsp?id=' class="btn btn-secondary" style="font-size:20px;">Kullanici Ekle</a></td>
</table>
<table class="table table-hover table-dark">
  <thead>
    <tr>
      <th scope="col">Öðretmen Ad</th>
      <th scope="col">Öðretmen Soyad</th>
      <th scope="col">Öðretmen Email</th>
      <th scope="col">Öðretmen Branþ</th>
      <th scope="col">Öðretmen Puan</th>
    </tr>
  </thead>
  <tbody>
    <% 
  ResultSet rs=Listele.selectAllData();
  while(rs.next()) { %>
  <tr>
    <td><%=rs.getString("ogradi") %></td>
    <td><%=rs.getString("ogrsoyadi") %></td>
    <td><%=rs.getString("ogremail") %></td>
    <td><%=rs.getString("ogrbrans") %></td>
    <td><%=rs.getString("ogrpuan") %></td>
    <td><a href='ogretmenguncelle2.jsp?id=<%=rs.getString("ogrid")%>' class="btn btn-secondary" style="font-size:15px;">GÜNCELLE</a></td>
    <td><a href='ogrSil.jsp?id=<%=rs.getString("ogrid")%>' class="btn btn-secondary" style="font-size:15px;">SÝL</a></td>
  </tr>
  <%} %>
  </tbody>
</table>
<table id="myTable">
  <tr class="header">
  </tr>
</table>
<table class="table table-hover table-dark">
  <thead>
    <tr>  
      <th scope="col">Kullanýcý Ad</th>
      <th scope="col">Kullanýcý Soyad</th>
      <th scope="col">Kullanýcý Email</th>
      <th scope="col">Kullanýcý Makale Branþý</th>
      <th scope="col">Kullanýcý Makale</th>
    </tr>
  </thead>
  <tbody>
    <% 
  ResultSet rss=Listele2.selectAllData();
  while(rss.next()) { %>
  <tr>
    <td><%=rss.getString("uyeadi") %></td>
    <td><%=rss.getString("uyesoyadi") %></td>
    <td><%=rss.getString("uyeemail") %></td>
    <td><%=rss.getString("uyebrans") %></td>
    <td><%=rss.getString("uyemakale") %></td>
    <td><a href='uyelerguncelle2.jsp?id=<%=rss.getString("uyeid")%>'class="btn btn-secondary" style="font-size:15px;">GÜNCELLE</a></td>
    <td><a href='uyesil.jsp?id=<%=rss.getString("uyeid")%>'class="btn btn-secondary" style="font-size:15px;">SÝL</a></td>
  </tr>
  <%} %>
  </tbody>
</table>
<table id="myTable">
  <tr class="header">
  </tr>
</table>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
</div>
</form>
<%if(request.getParameter("sonuc")!=null && request.getParameter("sonuc").equals("1")) { %>
<div class="alert-success">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">×</span> 
Mail Gönderildi.
</div>
<%}else if(request.getParameter("sonuc")!=null && request.getParameter("sonuc").equals("0")) { %>
<div class="alert-unsuccess">
 <span class="closebtn" onclick="this.parentElement.style.display='none';">×</span> 
Mail Gönderilemedi.
</div>
<%} %>
<div id="main" style="margin: auto;width: 50%; margin-top:150px;">
<div class="container">
  <form action="MailControl.jsp" method="post">
  <div class="row">
      <div class="col-25">
        <label for="lname">E-mail</label>
      </div>
      <div class="col-75">
        <input type="email" id="lname" name="from">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="pword">Þifre</label>
      </div>
      <div class="col-75">
        <input type="password" id="pword" name="password">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="fname">Öðretmen E-posta</label>
      </div>
      <div class="col-75">
        <input type="email" id="fname" name="to">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="email">Mail Konu</label>
      </div>
      <div class="col-75">
		<input type="text" id="email" name="header">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="mesaj">Makale</label>
      </div>
      <div class="col-75">
		<textarea  cols="25" id="mesaj" name="message" ></textarea>
      </div>
    </div>
    <FORM  enctype="multipart/form-data" action="MailControl.jsp" method=POST>
    <b>Dosya Seç</b>
    <INPUT NAME="file" TYPE="file">
</FORM>
    <div class="row">
      <input type="submit" value="GÖNDER">
    </div>
  </form>
</div>
</div>
</body>
</html>
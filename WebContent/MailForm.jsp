<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<%
request.setCharacterEncoding("ISO-8859-9");
%>
    <!DOCTYPE html>
<html>
<head>
<link href="css/Form.css" rel="stylesheet" type="text/css">
</head>
<body>
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
        <label for="lname">E-mail Adresiniz </label>
      </div>
      <div class="col-75">
        <input type="email" id="lname" name="from" placeholder="E-Posta Giriniz">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="pword">Þifreniz</label>
      </div>
      <div class="col-75">
        <input type="password" id="pword" name="password" placeholder="Yönetici Þifresi">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="fname">Alýcý E Posta</label>
      </div>
      <div class="col-75">
        <input type="email" id="fname" name="to" placeholder="E-Posta Giriniz">
      </div>
    </div>
    
    <div class="row">
      <div class="col-25">
        <label for="email">Mail Konusu</label>
      </div>
      <div class="col-75">
		<input type="text" id="email" name="header" placeholder="Mail Baþlýðý Giriniz..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="mesaj">Mail Ýçeriði</label>
      </div>
      <div class="col-75">

		<textarea  cols="25" id="mesaj" name="message" placeholder="Göndermek istediðiniz Mesaj"></textarea>
      </div>
    </div>
    <div class="row">
      <input type="submit" value="Mail Gönder">
    </div>
  </form>
  <FORM  enctype="multipart/form-data" action="MailControl.jsp" method=POST>
    <b>Dosya Seçin</b>
    <INPUT NAME="file" TYPE="file">
</FORM>
</div>
</div>
</body>
</html>
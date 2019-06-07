<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="css/Form.css" rel="stylesheet" type="text/css">
<%
int sayi=Integer.parseInt(request.getParameter("id"));
session.setAttribute("ogrid",sayi);
%>
</head>
<body>
<div id="main">
<div class="container">
  <form action="ogretmenguncelle.jsp" method="post">
      <div class="col-75">
        <input type="text" id="ogrid" name="id" value="<%=session.getAttribute("ogrid")%>">
      </div>
    </div>
    <div class="col-75">
        Ad<input type="text" id="ogradi" name="ad" value="<%=session.getAttribute("ogradi")%>">
      </div>
    </div>
    <div class="col-75">
        Soyad<input type="text" id="ogrsoyadi" name="soyad" value="<%=session.getAttribute("ogrsoyadi")%>">
      </div>
    </div>
    <div class="col-75">
        E-mail<input type="text" id="ogremail" name="email" value="<%=session.getAttribute("ogremail")%>">
      </div>
    </div>
    <div class="col-75">
        Brans<input type="text" id="ogrbrans" name="brans" value="<%=session.getAttribute("ogrbrans")%>">
      </div>
    </div>
    <div class="col-75">
        Puan<input type="text" id="ogrpuan" name="puan" value="<%=session.getAttribute("ogrpuan")%>">
      </div>
    </div>
    <div class="row">
      <input type="submit" value="Guncelle">
    </div>
  </form>
</div>
</div>
</body>
</html>

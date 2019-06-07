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
session.setAttribute("uyeid",sayi);
%>
</head>
<body>
<div id="main">
<div class="container">
  <form action="uyelerguncelle.jsp" method="post">
      <div class="col-75">
        <input type="text" id="uyeid" name="id" value="<%=session.getAttribute("uyeid")%>">
      </div>
    </div>
    <div class="col-75">
        Ad<input type="text" id="uyeadi" name="ad" value="<%=session.getAttribute("uyeadi")%>">
      </div>
    </div>
    <div class="col-75">
        Soyad<input type="text" id="uyesoyadi" name="soyad" value="<%=session.getAttribute("uyesoyadi")%>">
      </div>
    </div>
    <div class="col-75">
        E-mail<input type="text" id="uyeemail" name="email" value="<%=session.getAttribute("uyeemail")%>">
      </div>
    </div>
    <div class="col-75">
        Brans<input type="text" id="uyebrans" name="brans" value="<%=session.getAttribute("uyebrans")%>">
      </div>
    </div>
    <div class="col-75">
        Makale<input type="text" id="uyemakale" name="makale" value="<%=session.getAttribute("uyemakale")%>">
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
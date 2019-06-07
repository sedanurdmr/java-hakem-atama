<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-9" pageEncoding="ISO-8859-9"%>
<%@ page import = "javax.mail.internet.MimeMessage.*" %>
<%
	request.setCharacterEncoding("ISO-8859-9");
%>
<%
   String result;
   //alici mail adresi
   String too = request.getParameter("to");
   // gonderici mail adresi
   String fromm = request.getParameter("from");
   //gonderici sifre
   String password=request.getParameter("password");
   String host = "localhost";
   // ozellik nesnesi olusturuluyor
   Properties properties = System.getProperties();
   properties.put("mail.smtp.host", host);
   //mail server ayarlari yapiliyor
   properties.put("mail.smtp.host", "smtp.gmail.com");
   properties.put("mail.smtp.port", "587");
   //SSL sertifikasi kullanilmak istenirse bu ayarlar eklenir
   properties.put("mail.smtp.socketFactory.port", "465");
   properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
   properties.put("mail.smtp.auth", "true");
   properties.put("mail.smtp.port", "465");
   // Mail icin session nesnesi olusturulur.
   Session mailSession = Session.getInstance(properties,
                           new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                           return new PasswordAuthentication(fromm, password);
                    }
             }); 
   try {
      // olusturulan sessiondan mimemesage nesnesi olusturulur
      Message message = new MimeMessage(mailSession);
      // gonderici adresi set ediliyor
      message.setFrom(new InternetAddress(fromm));
      // alici adresi set ediliyor
      message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(too));
      // mail basligi set ediliyor
      message.setSubject(request.getParameter("header"));
      // mail icerigi set ediliyor
      message.setText(request.getParameter("message"));
      Transport.send(message);
      //mail gonderilir ise sonuc 1
      response.sendRedirect("ogretmenListele.jsp?sonuc=1");
   } 
   catch (MessagingException mex) {
      mex.printStackTrace();
    //mail gonderilemez ise sonuc 0
      response.sendRedirect("ogretmenListele.jsp?sonuc=0");
   }
%>
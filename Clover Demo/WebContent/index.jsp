<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clover Data Dump</title>
</head>
<body>
Welcome to Clover Data Dump 
<%
// The URL that will fetch the Access Token, Merchant ID, and Employee ID
String client_id = "BWJ9EBVMNJA5E";
String reqTokenRedirect = "http://localhost:8080/Clover_Demo/findAllData.jsp";
String url = "http://clover.com/oauth/authorize" +
        "?client_id=" + client_id +
        "&redirect_uri=" + reqTokenRedirect; 
out.println(url);
response.sendRedirect(url);
%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page
	import="java.io.BufferedReader, java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement, java.io.InputStreamReader, java.util.Properties, java.net.URL, java.net.HttpURLConnection"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String MID = "#######";//Enter MID Here
String access_token = "##################";//Enter Generated Access Token

//out.println(">>>>>>>>> KP Here ");

HttpURLConnection urlConnection = null;
URL url = null;
//response.sendRedirect("https://api.clover.com:443/v3/merchants/2SHVRG7GZ4PJY");
try{
	
	url = new URL("https://api.clover.com:443/v3/merchants/#<Merchant ID>#/orders?access_token="+access_token);
	urlConnection = (HttpURLConnection) url.openConnection();
	urlConnection.setRequestMethod("GET");
	urlConnection.setUseCaches(false);
	urlConnection.setDoInput(true);
	urlConnection.setDoOutput(true);
	urlConnection
			.setRequestProperty("Connection", "Keep-Alive");
	urlConnection.setRequestProperty("Content-Type",
			"application/json");
	urlConnection.setRequestProperty("Accept",
			"application/json");
	//out.println(">>>>>>>>> Before Connect ");
	urlConnection.connect();
	//out.println(">>>>>>>>> After Connect ");
	
	if (urlConnection != null) {
		//out.println(">>>>>>>>> Getting input Stream ");
		InputStreamReader in = new InputStreamReader(urlConnection.getInputStream());
		BufferedReader reader = new BufferedReader(in);
		StringBuilder result = new StringBuilder();
		String line;
		//out.println(">>>>>>>>> Before While Loop ");
		while((line = reader.readLine()) != null) {
		    result.append(line);
		}
		out.println(result.toString());

	}
	
}catch(Exception e){
	e.printStackTrace();
}


%>>
</body>
</html>
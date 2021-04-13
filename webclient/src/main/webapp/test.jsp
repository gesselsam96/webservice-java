<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello World Java EE</title>
</head>
<body>
    <h1>Hello JSP and Servlet!</h1>
	<form action="helloServlet" method="post">
    Enter your name: <input type="text" name="yourName" size="20">
    <input type="submit" value="Call Servlet" />
</form>
</body>
</html>

<%
  URL l_url = new URL ("http://localhost:8080/soap/servlet/rpcrouter");
  ServiceManagerClient l_soap_client = new ServiceManagerClient(l_url);
  String l_test[] = l_soap_client.list();
  for (int i=0; i < l_test.length; i++)
  { out.print(l_test[i] + "<br/>"); }
%>
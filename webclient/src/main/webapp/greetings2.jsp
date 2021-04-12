<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Greetings Page</title>
    </head>
    <body>
		<h1> <%= session.getValue("name") %> Greeting message: </h1><br>
    </body>
</html>

<%
  try {
	WebservicehelloService service=new WebservicehelloService();
	java.lang.String name= (String)session.getValue("name");
    java.lang.String result= service.sayHello(name);
    out.println("Result = "+ result);	
  } catch (Exception ex) {
	  
  }	  
%>
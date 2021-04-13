<%@page import="com.helloweb.webclient.Webservicehello,com.helloweb.webclient.WebservicehelloService"%>
<!DOCTYPE html>
<html>
    <head>
  <title>Greetings Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
	
	<div class="jumbotron text-center">
	  <h1>Java Servlet</h1>
	  <p>Hope you enjoyed our demo!</p> 
    </div>
  
<div class="container">
  <h2>Contextual Backgrounds</h2>
  <p>Use the contextual background classes to provide "meaning through colors":</p>
  <p class="bg-primary">
   <%= session.getValue("name") %> 
		<%
		  try {
			WebservicehelloService service=new WebservicehelloService();
			Webservicehello port=service.getWebservicehelloPort();
			java.lang.String name= (String)session.getValue("name");
			java.lang.String result= port.sayHello(name);
			out.println("Result = "+ result);	
		  } catch (Exception ex) {
			  
		  }	  
		%></p>
</div>
    </body>
</html>


package com.helloweb.webclient;

import com.helloweb.ws.endpoint.HelloService;
import javax.xml.ws.WebServiceRef;

public class HelloAppClient {
    @WebServiceRef(wsdlLocation =
      "http://localhost:8080/HelloService/helloService?WSDL")
    private static HelloService service;

    /**
     * @param args the command line arguments
     */
	 
	public String name="Gilbert"; 
	
    public static void main(String[] args) {
       System.out.println(sayHello("world"));
    }

/*     private static String sayHello(java.lang.String arg0) {
        javaeetutorial.helloservice.endpoint.Hello port =
                service.getHelloPort();
        return port.sayHello(arg0);
    } */
	
    public static String sayHello(String name) {
        com.helloweb.ws.endpoint.HelloService port =
                service.getHelloPort();
        return port.sayHello(name);
    }
}
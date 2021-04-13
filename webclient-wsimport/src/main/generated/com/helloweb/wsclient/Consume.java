package com.helloweb.wsclient;

import com.helloweb.webclient.Webservicehello;
import com.helloweb.webclient.WebservicehelloService;

public class Consume {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		WebservicehelloService service=new WebservicehelloService();
		Webservicehello port=service.getWebservicehelloPort();
		
		String result=port.sayHello("Gilbert");
		System.out.println(result);
	}

}

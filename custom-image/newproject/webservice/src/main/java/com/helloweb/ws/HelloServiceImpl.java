package com.helloweb.ws;

import javax.jws.WebService;
@WebService(endpointInterface = "com.helloweb.ws.HelloService")
public class HelloServiceImpl implements HelloService{
	@Override
  public String sayHello() {
    return "Hello";
  }
}
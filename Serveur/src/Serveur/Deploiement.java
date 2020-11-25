package Serveur;

import javax.xml.ws.Endpoint;

public class Deploiement {
	
	public static void main(String[] args) {
		String url = "http://localhost:8989/";
		Endpoint.publish(url, new Ter());
		System.out.println("http://localhost:8989/?wsdl");
	}
}

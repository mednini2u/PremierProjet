package polytech;

import javax.xml.ws.Endpoint;


public class Deploiement {
	public static void main(String[] args) {
		String url = "http://localhost:8888/";
		Endpoint.publish(url, new Services());
		
		System.out.println("http://localhost:8888/?wsdl");
	}
}

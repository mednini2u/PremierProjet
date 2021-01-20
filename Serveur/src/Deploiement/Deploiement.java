package Deploiement;
import java.lang.Thread;

import javax.xml.ws.Endpoint;

import Model.Cli;
import Model.Ter;

public class Deploiement extends Thread {
	
	public static void main(String[] args) {
		String urlTer = "http://localhost:8989/Ter";
		String urlCli = "http://localhost:8989/Cli";
		Endpoint.publish(urlCli, new Cli());
		Endpoint.publish(urlTer, new Ter());
		System.out.println("Serveur ok");
	}
}
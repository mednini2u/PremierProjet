package Model;

import java.io.Serializable;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Terrain implements Serializable {
	private int id;
	private String nom;
	private double surface;
	private double prix;

	public Terrain(int id, String nom, double surface, double prix) {
		super();
		this.id= id;
		this.nom = nom;
		this.surface = surface;
		this.prix = prix;
	}
	
	public Terrain() {
		super();
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getNom() {
		return nom;
	}


	public void setNom(String nom) {
		this.nom = nom;
	}


	public double getSurface() {
		return surface;
	}


	public void setSurface(double surface) {
		this.surface = surface;
	}


	public double getPrix() {
		return prix;
	}


	public void setPrix(double prix) {
		this.prix = prix;
	}


	@Override
	public String toString() {
		return "Terrain [id=" + id + ", nom=" + nom + ", surface=" + surface + ", prix=" + prix + "]";
	}

}

package polytech;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Products implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int code;
	private String designation;
	private double prix_achat;
	private static int num=1;
	

	public Products() {
		super();
	}


	public Products(String designation, double prix_achat) {
		super();
		this.code = num;
		num++;
		this.designation = designation;
		this.prix_achat = prix_achat;

	}




	public int getCode() {
		return code;
	}




	public void setCode(int code) {
		this.code = code;
	}




	public String getDesignation() {
		return designation;
	}




	public void setDesignation(String designation) {
		this.designation = designation;
	}




	public double getPrix_achat() {
		return prix_achat;
	}




	public void setPrix_achat(double prix_achat) {
		this.prix_achat = prix_achat;
	}









	@Override
	public String toString() {
		return "Products [code=" + code + ", designation=" + designation + ", prix_achat=" + prix_achat + ", prix_vente="
				 + "]";
	}
	
	
	
}

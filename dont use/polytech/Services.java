package polytech;

import java.util.ArrayList;

import javax.jws.WebMethod;

public class Services {
	public static ArrayList<Products> product = new ArrayList<>();
	static {
		product.add(new Products("Ordi", 650));
		product.add(new Products("Tablette", 500));
		product.add(new Products("Souris gaming", 200));
		product.add(new Products("Clavier mécanique", 50));
		product.add(new Products("Souris gaming", 200));
		product.add(new Products("Clavier mécanique", 50));
	
	}
	
	@WebMethod(operationName = "tous")
	public ArrayList<Products> afficherLesProduits(){
		return product;
	}
	
	 @WebMethod(operationName = "ajout")
	public Products ajouter(String designation, double prix_achat) {
		Products p = new Products(designation, prix_achat);
		product.add(p);
		return p;
	}
	 
	 public ArrayList<Products> ListeProduitSup(double mt){
			ArrayList<Products> results = new ArrayList<>();
			for(Products product : product) {
				if(product.getPrix_achat() > mt) {
					results.add(product);
				}
			}
			return results;
		}
		 
		
		public Products getProduct(int code) {
			for(Products product : product) {
				if(product.getCode()==code) {
					return product;
				}
			}
			return null;
		}
		
	
}

package Beans;

public class Client {

	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getAdresse() {
		return adresse;
	}
	@Override
	public String toString() {
		return "Client [nom=" + nom + ", prenom=" + prenom + ", adresse=" + adresse + ", telephone=" + telephone
				+ ", email=" + email + "]";
	}
	public void setAdresse(String aderesse) {
		this.adresse = aderesse;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	 
	public boolean  verify(){
		boolean b = true ; 
		if(nom==null ||nom.length()<5 ) 
		{	
			b= false  ; 
			nom = null ; 
		}
		if(prenom==null || prenom.length()<5 ) 
		{	
			b= false  ; 
			prenom = null ; 
		}
		if(	adresse==null || adresse.length()<15 )
		{	
			b= false  ; 
			adresse = null ; 
		}
		if(	telephone==null || telephone.length()<9 || (!telephone.startsWith("+33")&&!telephone.startsWith("06") ) )
		{
			b = false  ;  
			telephone =null ;
		} 
				
			return b ; 
	}
	
	private String nom ; 
	private String prenom ; 
	private String adresse ; 
	private	String telephone ; 
	private String email ; 

}

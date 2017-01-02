package Beans;

public class Utilisateur {
	private String nom;
	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	private String prenom;
	private String bio;
	private boolean genius;
	private String  token  ; 
	private String  imageurl  ; 
	private String pass ;
	
	public Utilisateur() {
		this.nom = "nobody" ;
		this.prenom = "nobody" ;
		genius = true ; 
	}

	public String getToken() {
		return token;
	}

	public String getPrenom() {
		return prenom;
	}


	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}


	public String getBio() {
		return bio;
	}


	public void setBio(String bio) {
		this.bio = bio;
	}


	public String getImageurl() {
		return imageurl;
	}


	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}


	public void setToken(String token) {
		this.token = token;
	}


	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	@Override
	public String toString() {
		return "Utilisateur [nom=" + nom + ", prenom=" + prenom + ", bio=" + bio + ", genius=" + genius + ", imageurl="
				+ imageurl + "]";
	}
	
}

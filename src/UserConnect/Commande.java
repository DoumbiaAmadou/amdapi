package UserConnect;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Commande
 */
public class Commande extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Commande() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		    String nom = request.getParameter( "nomClient" );
	        String prenom = request.getParameter( "prenomClient" );
	        String adresse = request.getParameter( "adresseClient" );
	        String telephone = request.getParameter( "telephoneClient" );
	        String email = request.getParameter( "emailClient" );

	        /* Récupération de la date courante */
	        DateTime dt = new DateTime();
	        /* Conversion de la date en String selon le format défini */
	        DateTimeFormatter formatter = DateTimeFormat.forPattern( "dd/MM/yyyy HH:mm:ss" );
	        String date = dt.toString( formatter );
	        double montant=0;
	        try {
	            /* Récupération du montant */
	            montant = Double.parseDouble( request.getParameter( "montantCommande" ) );
	        } catch ( Exception e ) {
	            /* Initialisation à -1 si le montant n'est pas un nombre correct */
	            montant = -1;
	        }
	        String modePaiement = request.getParameter( "modePaiementCommande" );
	        String statutPaiement = request.getParameter( "statutPaiementCommande" );
	        String modeLivraison = request.getParameter( "modeLivraisonCommande" );
	        String statutLivraison = request.getParameter( "statutLivraisonCommande" );
	        Beans.Client client = new Beans.Client();
	        client.setNom( nom );
	        client.setPrenom( prenom );
	        client.setAdresse( adresse );
	        client.setTelephone( telephone );
	        client.setEmail( email );

	        Beans.Commande commande = new Beans.Commande();
	        commande.setClient( client );
	        commande.setDate( date );
	        commande.setMontant( montant );
	        commande.setModePaiement( modePaiement );
	        commande.setStatutPaiement( statutPaiement );
	        commande.setModeLivraison( modeLivraison );
	        commande.setStatutLivraison( statutLivraison );
	        
	        
	        request.setAttribute( "commande", commande );
	        
			if(client.verify()  && commande.verify() ){
				request.setAttribute( "message", "wrong parameters" );
				this.getServletContext().getRequestDispatcher( "/WEB-INF/afficheCommande.jsp"  ).forward( request, response );
			}else 
				this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/newCommande.jsp" ).forward( request, response );
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

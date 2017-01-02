package UserConnect;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Client
 */
public class Client extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Client() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Beans.Client tmpClient = new Beans.Client() ; 
		tmpClient.setNom((String) request.getParameter("nomClient"));
		tmpClient.setPrenom((String) request.getParameter("prenomClient"));
		tmpClient.setAdresse((String) request.getParameter("adresseClient"));
		tmpClient.setTelephone((String) request.getParameter("telephoneClient"));
		tmpClient.setEmail((String) request.getParameter("emailClient"));
//		System.out.println("amamamamam"+tmpClient.toString()); 
		request.setAttribute("guest", tmpClient);
		if(tmpClient.verify()){
			System.out.println("amamamamam"+tmpClient.toString()); 
			
			this.getServletContext().getRequestDispatcher( "/WEB-INF/afficheClient.jsp" ).forward( request, response );
		}else		
		this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/newClient.jsp" ).forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

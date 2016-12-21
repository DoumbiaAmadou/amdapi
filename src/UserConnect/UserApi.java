package UserConnect;
import  Beans.Utilisateur;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserApi
 */
@WebServlet("/ame")
public class UserApi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserApi() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		Utilisateur  util  = new Utilisateur() ; 
		util.setPass("pass");
		util.setBio("hi I'm a little boy my name is the gnome");
		util.setImageurl("https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAfkAAAAJGQ4ZTY0YjQwLTgyMzUtNDI1MS05MTI2LTQzYmU0ODc4NjVhZQ.jpg");
		util.setPrenom("Joseph");
		
		request.setAttribute("user", util);
		
		response.setContentType("text/html");
		response.setCharacterEncoding( "UTF-8" );
		response.getWriter().append("yes we can");
		request.setAttribute("name", "amadou" );
		this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/profile.jsp" ).forward( request, response );
		System.out.println("toto");
		//.append(request.getContextPath())

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

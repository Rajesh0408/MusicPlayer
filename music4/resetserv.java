package music4;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class resetserv
 */
@WebServlet("/resetserv")
public class resetserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public resetserv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String em=request.getParameter("email");
		String p=request.getParameter("password");
		String rp=request.getParameter("repassword");
		if(p.equals(rp)) {
			if(resetdb.update(em,p)) {
				RequestDispatcher rd=request.getRequestDispatcher("LogIn.jsp");
				rd.forward(request, response);
			}
		}
		else {
			RequestDispatcher rd=request.getRequestDispatcher("password.jsp");
			rd.forward(request, response);
		}
	}

}

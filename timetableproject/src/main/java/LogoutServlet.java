import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogoutServlet
 */
public class LogoutServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //invalidate the session if exists
        HttpSession session;
        while ((session = request.getSession(false)) != null) {

            System.out.println(session.getId());
            session.invalidate();
        }
//        if(session != null){
//
//        }
        response.sendRedirect(request.getContextPath() + "/index.jsp");
    }
}
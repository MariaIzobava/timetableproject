
import Databases.SQLiteClass;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
        if (dispatcher != null) {
            dispatcher.forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) {

        // get request parameters for username and password
        String username = request.getParameter("login");
        String password = request.getParameter("pwd");

        try {
            boolean status = SQLiteClass.isUserValid(username, password);
            if (status == true) {

                //get the old session and invalidate
                HttpSession oldSession = request.getSession(false);
                if (oldSession != null) {
                    oldSession.invalidate();
                }
                //generate a new session
                HttpSession newSession = request.getSession(true);

                SQLiteClass.updateUserSession(username, password, newSession.getId());

                //setting session to expiry in 5 mins
                newSession.setMaxInactiveInterval(5 * 60);
                Cookie message = new Cookie("message", "Welcome");

                response.addCookie(message);

                response.sendRedirect("main.jsp");

            } else {
                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                    PrintWriter out = response.getWriter();
                    out.println("<font color=red>Either username or password is wrong.</font>");
                    rd.include(request, response);
            }
        } catch (Exception e) {
            System.out.println(e.toString());
        }
    }
}
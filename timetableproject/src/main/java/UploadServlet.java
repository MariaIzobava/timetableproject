import ParsingExel.SheetParser;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UploadServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("POST!!!!!!!");
        SheetParser.readPairs();
        RequestDispatcher dispatcher = request.getRequestDispatcher("chairsLIst.jsp");
        if (dispatcher != null) {
            dispatcher.forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("GET!!!!!!!");
        RequestDispatcher dispatcher = request.getRequestDispatcher("chairsLIst.jsp");
        if (dispatcher != null) {
            dispatcher.forward(request, response);
        }
    }
}

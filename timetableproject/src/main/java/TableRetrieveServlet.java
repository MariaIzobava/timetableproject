import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.http.HttpServlet;
import java.util.ArrayList;
import java.util.HashMap;

//import Databases.SQLiteClass;
import Databases.SQLChairsAccessClass;
import Databases.SQLiteClass;
import org.json.JSONArray;
import org.json.JSONObject;

public class TableRetrieveServlet extends HttpServlet {

    private static int count = 0;

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //response.setContentType("text/html");
        System.out.println("BAAASDASDSD");
        RequestDispatcher dispatcher = request.getRequestDispatcher("chairsList.jsp");
        if (dispatcher != null) {
            dispatcher.forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("BAAASDASDSD");


        StringBuilder jb = new StringBuilder();
        String line = null;

        try {
            BufferedReader reader = request.getReader();
            while ((line = reader.readLine()) != null)
                jb.append(line);
        } catch (Exception e) {
            System.out.println(e.toString());
        }

        try {
            JSONObject jsonObject = new JSONObject(jb.toString());

            response.setContentType("application/json");
            PrintWriter out = response.getWriter();

            int command = jsonObject.getInt("command");

            switch (command) {

                case 0: //show all names

                    JSONObject names = SQLChairsAccessClass.getChairData(jsonObject.getString("tableName"));

                    System.out.println("CYCY");

                    JSONObject jsonToReturn0 = new JSONObject();
                    jsonToReturn0.put("answer", "names");
                    jsonToReturn0.put("list", names);
                    System.out.println(jsonToReturn0.toString());

                    out.println(jsonToReturn0);

                    break;

                case 1: //add new name

                    String data = jsonObject.getString("name");

                    SQLiteClass.addName(data);

                    JSONObject jsonToReturn1 = new JSONObject();
                    jsonToReturn1.put("answer", "ok");
                    out.println(jsonToReturn1.toString());

                    break;

                default:
                    System.out.println("default switch");
                    break;

            }
        } catch (Exception e) {
            System.out.println(e.toString());
        }
    }
}
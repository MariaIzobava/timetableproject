package Databases;

import javax.naming.NamingException;
import java.sql.*;
import java.util.ArrayList;

public class SQLiteClass extends SQLBaseConnClass {

    public static void addName(String name) throws ClassNotFoundException, SQLException {
        try {
            Conn();
            stat = conn.createStatement();
            PreparedStatement statement = conn.prepareStatement("INSERT INTO first (name) VALUES (?)");
            statement.setString(1, name);
            statement.execute();
            statement.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        finally {
            stat.close();
            CloseDB();
        }
    }

    public static boolean doesSessionExist(String cookie) {
        try {
            Conn();
            PreparedStatement statement = conn.prepareStatement("select * from credentials where session = ?");

            statement.setString(1, cookie);

            ResultSet rs = statement.executeQuery();

            boolean ans = rs.next();
            rs.close();
            statement.close();
            CloseDB();
            return ans;

        }
        catch (Exception e) {
            System.out.println(e);
            return false;
        }
    }

    public static void updateUserSession(String username, String password, String newSession) {
        try {
            Conn();
            PreparedStatement statement = conn.prepareStatement("UPDATE credentials SET session = ? where login = ? and password = ?");

            statement.setString(1, newSession);
            statement.setString(2, username);
            statement.setString(3, password);


            int rs = statement.executeUpdate();
            System.out.println(statement.toString() + " " + rs);

            statement.close();
            CloseDB();

        }
        catch (Exception e){
            System.out.println(e);

        }
    }

    public static boolean isUserValid(String username, String password) throws ClassNotFoundException, SQLException, NamingException {
        Conn();
        PreparedStatement statement = conn.prepareStatement("select * from credentials where login = ? and password = ?");

        statement.setString(1, username);
        statement.setString(2, password);

        ResultSet rs = statement.executeQuery();
        boolean res = rs.next();

        rs.close();

        CloseDB();

        return res;
    }

    public static String getUserName(String session) {
        try {
            Conn();

            PreparedStatement statement = conn.prepareStatement("select * from credentials where session = ?");
            statement.setString(1, session);
            ResultSet rs = statement.executeQuery();

            String res = "guest";
            if (rs.next())
                res = rs.getString("name");
            rs.close();
            statement.close();
            CloseDB();
            return res;

        }
        catch (Exception e){
            System.out.println(e);
            return "guest";
        }
    }

    public static SQLiteClass.USER_TYPE getUserTitle(String session) {
        try {
            Conn();
            PreparedStatement statement = conn.prepareStatement("select type from credentials where session = ?");
            statement.setString(1, session);
            ResultSet rs = statement.executeQuery();

            SQLiteClass.USER_TYPE res = USER_TYPE.GUEST;
            if (rs.next())
                res = rs.getString("type").equals("ADMIN")  ? USER_TYPE.ADMIN :
                        rs.getString("type").equals("TEACHER") ? USER_TYPE.TEACHER : USER_TYPE.GUEST;

            rs.close();
            statement.close();
            CloseDB();
            return res;

        }
        catch (Exception e){
            System.out.println(e);
            return USER_TYPE.GUEST;
        }
    }

    public static ArrayList<String> getAllNames() throws ClassNotFoundException, SQLException, NamingException
    {
        ArrayList<String> names = new ArrayList<String>();

        Conn();
        stat = conn.createStatement();
        ResultSet rs = stat.executeQuery("select name from first");
        
        while (rs.next()) {
            names.add(rs.getString("name"));
        }

        rs.close();
        stat.close();
        CloseDB();

        return names;
    }
}

package Databases;

import javax.naming.NamingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public abstract class SQLBaseConnClass {
    public static Connection conn;
    public static Statement stat;

    public enum USER_TYPE {
        GUEST,
        TEACHER,
        ADMIN
    }

    protected static void Conn() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/university?useSSL=false", "root", "Maria15081998");
        }
        catch (Exception e) {
            System.out.println(e);
        }
    }

    protected static void CloseDB() throws ClassNotFoundException, SQLException {
        conn.close();
    }
}

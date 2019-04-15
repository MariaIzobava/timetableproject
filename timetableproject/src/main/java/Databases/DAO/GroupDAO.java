package Databases.DAO;

import DBEntities.Group;
import Databases.SQLBaseConnClass;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class GroupDAO extends SQLBaseConnClass {

    public static int findGroup(int course, int number) {
        try {
            Conn();
            PreparedStatement statement = conn.prepareStatement("select id from `groups` where course = ? and number = ?");
            statement.setInt(1, course);
            statement.setInt(2, number);
            ResultSet rs = statement.executeQuery();

            int id = -1;
            if (rs.next())
                id = rs.getInt("id");

            rs.close();
            CloseDB();
            return id;


        } catch (Exception e) {
            System.out.println(e);
            return -1;
        }
    }
}

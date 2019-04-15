package Databases.DAO;

import DBEntities.Pair;
import Databases.SQLBaseConnClass;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class PairDAO extends SQLBaseConnClass {

    public static void addPair(Pair pair, String tableName) {
        try {
            Conn();
            String sql = String.format("insert into %s ", tableName);
            PreparedStatement statement = conn.prepareStatement(sql + "(course, subgroup, subject) values (?, ?, ?)");
            statement.setInt(1, pair.getCourse());
            statement.setInt(2, 1);
            statement.setString(3, pair.getSubject());


            System.out.println(statement.toString());
            statement.execute();

            CloseDB();
        }
        catch (Exception e) {
            System.out.println(e);
        }
    }
}

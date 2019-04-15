package Databases;

import org.json.JSONArray;
import org.json.JSONObject;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

public class SQLChairsAccessClass extends SQLBaseConnClass {

    public static ArrayList<String> getChairsList()  throws ClassNotFoundException, SQLException {
        Conn();
        ArrayList<String> names = new ArrayList<String>();

        stat = conn.createStatement();
        ResultSet rs = stat.executeQuery("select name from chairs");

        while (rs.next()) {
            names.add(rs.getString("name"));

        }

        rs.close();
        stat.close();
        CloseDB();

        return names;
    }

    public static JSONObject getChairData(String tableName) throws ClassNotFoundException, SQLException {
        Conn();
        stat = conn.createStatement();
        String sql = String.format("select * from %s",  tableName);
        PreparedStatement statement = conn.prepareStatement(sql);
        //statement.setString(1, tableName);
        System.out.println(statement.toString());
        ResultSet rs = statement.executeQuery();
        JSONObject obj = new JSONObject();
        JSONArray res = new JSONArray();
        while (rs.next()) {
            JSONObject cur = new JSONObject();
            cur.put("id", ((Integer) rs.getInt("id")).toString());
            cur.put("course", ((Integer) rs.getInt("course")).toString());
            cur.put("group", ((Integer) rs.getInt("group_id")).toString());
            cur.put("subgroup", ((Integer) rs.getInt("subgroup")).toString());
            cur.put("subject", rs.getString("subject"));
            cur.put("type", rs.getString("type"));
            cur.put("teacher", ((Integer)rs.getInt("teacher_id")).toString());
            cur.put("monday", ((Integer) rs.getInt("monday")).toString());
            cur.put("notes", rs.getString("notes"));
            res.put(cur);
        }
        obj.put("data", res);
        return obj;
    }

}

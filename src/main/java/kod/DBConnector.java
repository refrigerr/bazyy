package kod;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBConnector {

    static String url = "jdbc:mysql://localhost:3306/szpital";
    static String username = "root";
    //static String password = "admin";
    static String password = "mysqlpass";
    public static Connection dane;
    public static Statement daneStatement;


    public static Connection connect()
    {
        try {
            return DriverManager.getConnection(url,username,password);
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return null;
    }
}
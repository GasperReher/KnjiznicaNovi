package si.feri.knjiznica.Razredi;

import java.sql.*;
import java.util.*;


public class ConnectionManager {

    static Connection con;
    static String url;

    public static Connection getConnection()
    {

        try
        {

            // assuming "DataSource" is your DataSource name

            //Class.forName("sun.jdbc.mysql.JdbcmysqlDriver");

            try
            {
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/knjiznica", "root", "root");

                // assuming your SQL Server's	username is "username"
                // and password is "password"

            }

            catch (SQLException ex)
            {
                ex.printStackTrace();
            }
        }

        catch(Exception e)
        {
            System.out.println(e);
        }

        return con;
    }
}
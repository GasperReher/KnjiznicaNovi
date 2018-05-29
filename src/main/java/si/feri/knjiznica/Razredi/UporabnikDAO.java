package si.feri.knjiznica.Razredi;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class UporabnikDAO {

    static Connection currentCon = null;
    static ResultSet rs = null;



    public static Uporabnik login(Uporabnik bean) {

        //preparing some objects for connection
        Statement stmt = null;

        String username = bean.getUpIme();
        String password = bean.getGeslo();

        String searchQuery =
                "select * from uporabnik where upIme='"
                        + username
                        + "' AND geslo='"
                        + password
                        + "'";

        // "System.out.println" prints in the console; Normally used to trace the process
        System.out.println("Your user name is " + username);
        System.out.println("Your password is " + password);
        System.out.println("Query: "+searchQuery);

        try
        {
            //connect to DB
            currentCon = ConnectionManager.getConnection();
            stmt=currentCon.createStatement();
            rs = stmt.executeQuery(searchQuery);
            boolean more = rs.next();

            // if user does not exist set the isValid variable to false
            if (!more)
            {
                System.out.println("Sorry, you are not a registered user! Please sign up first");
                bean.setPravilno(false);
            }

            //if user exists set the isValid variable to true
            else if (more)
            {
                String firstName = rs.getString("ime");
                String lastName = rs.getString("priimek");

                System.out.println("Welcome " + firstName);
                bean.setIme(firstName);
                bean.setPriimek(lastName);
                bean.setPravilno(true);
            }
        }

        catch (Exception ex)
        {
            System.out.println("Log In failed: An Exception has occurred! " + ex);
        }

        //some exception handling
        finally
        {
            if (rs != null)	{
                try {
                    rs.close();
                } catch (Exception e) {}
                rs = null;
            }

            if (stmt != null) {
                try {
                    stmt.close();
                } catch (Exception e) {}
                stmt = null;
            }

            if (currentCon != null) {
                try {
                    currentCon.close();
                } catch (Exception e) {
                }

                currentCon = null;
            }
        }

        return bean;

    }
}

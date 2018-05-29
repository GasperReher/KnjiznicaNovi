package si.feri.knjiznica.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import si.feri.knjiznica.Razredi.Kraj;
import si.feri.knjiznica.Razredi.Naslov;
import si.feri.knjiznica.Razredi.Uporabnik;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@Controller
public class MainController {


    @Value("Moj JSP")
    private String message = "Hello World";


    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("message", this.message);
        return "Index";
    }
    @RequestMapping(value = {"/dodajKnj"}, method = RequestMethod.GET)
    public String index2(Model model) {
        model.addAttribute("message", this.message);
        return "DodajKnj";
    }
    @RequestMapping(value = {"/iskanje"}, method = RequestMethod.GET)
    public String test(Model model) {
        model.addAttribute("message", this.message);
        return "Iskanje";
    }

    @RequestMapping(value = {"/registracija"}, method = RequestMethod.GET)
    public String reg(Model model) {
        model.addAttribute("message", this.message);
        return "Registracija";
    }



    @RequestMapping(value = {"/regBaza"}, method = RequestMethod.POST)
    public String regPb(Model model, @RequestParam(value = "rIme", required = false) String ime, @RequestParam(value = "rPriimek", required = false) String priimek, @RequestParam(value = "rEmail", required = false) String email, @RequestParam(value = "rNaslov", required = false) String naslov, @RequestParam(value = "rKraj", required = false) String kraj, @RequestParam(value = "rPostna", required = false) int postna, @RequestParam(value = "rUporabnisko", required = false) String upoIme, @RequestParam(value = "rGeslo", required = false) String geslo, @RequestParam(value = "rGeslo1", required = false) String geslo1) throws SQLException {
        model.addAttribute("message", this.message);


        boolean pravilnoUp = true;
        Connection conn9 = DriverManager.getConnection("jdbc:mysql://localhost:3306/knjiznica", "root", "root");

        List<Uporabnik> uporabnikList = new ArrayList<>();

        String sql9 = "SELECT * FROM uporabnik ";

        Statement st9 = conn9.createStatement();


        ResultSet rs9 = st9.executeQuery(sql9);

        // iterate through the java resultset
        while (rs9.next()) {
            uporabnikList.add(new Uporabnik(rs9.getInt("idUporabnik"), rs9.getString("ime"), rs9.getString("priimek"), rs9.getString("upIme"), rs9.getString("geslo"), rs9.getString("email"), rs9.getInt("tk_idNaslov")));
        }
        String nap = "Uporabniško ime že obstaja";
        for (Uporabnik u : uporabnikList) {
            String upo = u.getUpIme();

            if (upo.equals(upoIme)) {
                model.addAttribute("napaka", nap);
                pravilnoUp = false;
                break;


            } else {

                pravilnoUp = true;

            }


        }


        if (pravilnoUp == true) {


            String naslov1;
            String hisnaSt;
            int stevec = 0;
            for (int i = 0; i < naslov.length(); i++) {

                char x = naslov.charAt(i);

                if (x == '1' || x == '2' || x == '3' || x == '4' || x == '5' || x == '6' || x == '7' || x == '8' || x == '9') {
                    stevec = i;
                    break;
                }
            }

            naslov1 = naslov.substring(0, (stevec - 1));
            System.out.println(naslov1);
            hisnaSt = naslov.substring(stevec);
            System.out.println(hisnaSt);

            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/knjiznica", "root", "root");

            List<Kraj> krajList = new ArrayList<>();

            String sql = "SELECT * FROM kraj ";

            Statement st = conn.createStatement();

            // execute the query, and get a java resultset
            ResultSet rs = st.executeQuery(sql);

            // iterate through the java resultset
            while (rs.next()) {
                krajList.add(new Kraj(rs.getInt("idKraj"), rs.getInt("postanSt"), rs.getString("naziv")));
            }
            //st.close();

            int tuji = 0;
            for (Kraj k : krajList) {
                if (k.getPostnaSt() == postna) {
                    tuji = k.getIdKraj();

                }


            }
            if (tuji == 0) {
                kraj(postna, kraj);
                List<Kraj> krajList2 = new ArrayList<>();
                Connection conn5 = DriverManager.getConnection("jdbc:mysql://localhost:3306/knjiznica", "root", "root");
                String sql5 = "SELECT * FROM kraj ";

                Statement st5 = conn5.createStatement();

                // execute the query, and get a java resultset
                ResultSet rs5 = st5.executeQuery(sql5);

                // iterate through the java resultset
                while (rs5.next()) {
                    krajList2.add(new Kraj(rs5.getInt("idKraj"), rs5.getInt("postanSt"), rs5.getString("naziv")));
                }

                for (Kraj x : krajList2) {
                    int ka = x.getPostnaSt();
                    if (ka == postna) {
                        int z = x.getIdKraj();
                        tuji = z;
                    }
                }
            }


            List<Naslov> naslovList = new ArrayList<>();


            Connection conn6 = DriverManager.getConnection("jdbc:mysql://localhost:3306/knjiznica", "root", "root");
            String sql6 = "SELECT * FROM naslov ";

            Statement st6 = conn.createStatement();

            // execute the query, and get a java resultset
            ResultSet rs6 = st6.executeQuery(sql6);
            int tuji2 = 0;
            // iterate through the java resultset
            while (rs6.next()) {
                naslovList.add(new Naslov(rs6.getInt("idNaslov"), rs6.getString("ulica"), rs6.getString("hisnaSt"), rs6.getInt("tk_idKraj")));
            }

            for (Naslov n : naslovList) {
                if (n.getUlica().equals(naslov1)) {
                    tuji2 = n.getIdNaslov();
                }
            }
            if (tuji2 == 0) {
                naslov(naslov1, hisnaSt, tuji);  // v PB
                List<Naslov> naslovList2 = new ArrayList<>();
                Connection conn8 = DriverManager.getConnection("jdbc:mysql://localhost:3306/knjiznica", "root", "root");
                String sql8 = "SELECT * FROM naslov ";

                Statement st8 = conn8.createStatement();

                // execute the query, and get a java resultset
                ResultSet rs8 = st8.executeQuery(sql8);

                // iterate through the java resultset
                while (rs8.next()) {
                    naslovList2.add(new Naslov(rs8.getInt("idNaslov"), rs8.getString("ulica"), rs8.getString("hisnaSt"), rs8.getInt("tk_idKraj")));
                }

                for (Naslov x : naslovList2) {
                    String nas = x.getUlica();
                    if (nas.equals(naslov1)) {
                        int z = x.getIdNaslov();
                        tuji2 = z;
                    }
                }


            }

            conn.close();
            st6.close();


            // naslov(naslov1,hisnaSt,tuji);
            // System.out.println("Za metodo");

            Uporabnik uporabnik= new Uporabnik();
            uporabnik.setUpIme(upoIme);
            uporabnik.setGeslo(geslo);
            HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
            HttpSession session = request.getSession(true);
            session.setAttribute("currentSessionUser", uporabnik);
            session.setAttribute("currentSessionUserName", uporabnik.getUpIme());
            return "redirect:/index";


        }
        else {

            System.out.println("Up ime že obstaja");
            return "Registracija";
        }


    }

    public String naslov (String naslov1, String hisnaSt,int id) throws SQLException {


        Connection conn2 = null;

        try {
            conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/knjiznica", "root", "root");
        } catch (SQLException e) {
            e.printStackTrace();
        }

        String sql2 = "INSERT INTO naslov ( ulica, hisnaSt,tk_idKraj) VALUES (?,?,?)";
        PreparedStatement statement2 = conn2.prepareStatement(sql2);

        statement2.setString(1, naslov1);
        statement2.setString(2, hisnaSt);
        statement2.setInt(3, id);
        int rowsInserted2 = statement2.executeUpdate();
        if (rowsInserted2 > 0) {
            System.out.println("Uspesno naslov!");

        }


        return "Registracija";
    }

    public String uporabnik (String ime, String priimek, String upoIme, String geslo, String email,int id) throws
            SQLException {
        Connection conn3 = null;

        try {
            conn3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/knjiznica", "root", "root");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String sql3 = "INSERT INTO uporabnik ( ime, priimek, upIme, geslo, email,tk_idNaslov ) VALUES (?,?,?,?,?,?)";
        PreparedStatement statement3 = conn3.prepareStatement(sql3);

        statement3.setString(1, ime);
        statement3.setString(2, priimek);
        statement3.setString(3, upoIme);
        statement3.setString(4, geslo);
        statement3.setString(5, email);
        statement3.setInt(6, id);
        int rowsInserted3 = statement3.executeUpdate();
        if (rowsInserted3 > 0) {
            System.out.println("Uspesno uporabnik!");

        }


        return "Registracija";
    }

    public String kraj ( int postna, String kraj) throws SQLException {

        int id = 1;
        Connection conn = null;

        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/knjiznica", "root", "root");
        } catch (SQLException e) {
            e.printStackTrace();
        }


        String sql1 = "INSERT INTO kraj ( postanSt, naziv) VALUES (?,?)";
        PreparedStatement statement1 = conn.prepareStatement(sql1);

        statement1.setInt(1, postna);
        statement1.setString(2, kraj);
        int rowsInserted1 = statement1.executeUpdate();
        if (rowsInserted1 > 0) {
            System.out.println("Uspesno kraj");

        }
        return "Registracija";


    }


    @RequestMapping(value = {"/dodajKnj"}, method = RequestMethod.POST)
    public String knj(Model model, @RequestParam(value = "kNaslov" ,required = false) String naslov, @RequestParam(value = "kAvtorIme", required = false) String avtorIme,@RequestParam(value = "kAvtorPriimek", required = false) String avtorPriimek,@RequestParam(value = "kISBN", required = false) int isbn,@RequestParam(value = "kZalozba", required = false) String zalozba,@RequestParam(value = "kLetoIzdaje", required = false) int letoIzdaje,@RequestParam(value = "kPrevod", required = false) String prevod,@RequestParam(value = "kIlustracije", required = false) String ilustracije,@RequestParam(value = "kZanr", required = false) String zanr,@RequestParam(value = "kCiljnaPublika", required = false) String publika,@RequestParam(value = "kLokacija", required = false) String lokacija) throws SQLException {
        model.addAttribute("message", this.message);
        knjiga ( naslov,  avtorIme, avtorPriimek,  isbn, zalozba, letoIzdaje,  prevod, ilustracije,  zanr,  publika, lokacija);



        return "DodajKnj";
    }

    public String knjiga (String naslov, String avtorIme,String avtorPriimek, int isbn,String zalozba, int letoIzdaje, String prevod, String ilustracije, String zanr, String publika,String lokacija) throws SQLException {
        Connection conn = null;

        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/knjiznica", "root", "root");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String avtor= avtorIme+" "+avtorPriimek;

        String sql1 = "INSERT INTO Knjiga ( avtor, isbn, zalozba, letoIzdaje,prevod,ilustracije,zanr,publika,lokacija) VALUES (?,?,?,?,?,?,?,?,?)";
        PreparedStatement statement1 = conn.prepareStatement(sql1);

        statement1.setString(1, avtor);
        statement1.setInt(2, isbn);
        statement1.setString(3, zalozba);
        statement1.setInt(4, letoIzdaje);
        statement1.setString(5, prevod);
        statement1.setString(6, ilustracije);
        statement1.setString(7, zanr);
        statement1.setString(8, publika);
        statement1.setString(9, lokacija);
        int rowsInserted1 = statement1.executeUpdate();
/*        if (rowsInserted1 > 0) {
            System.out.println("Uspesno kraj");

        }
*/


        return "DodajKnj";
    }

}
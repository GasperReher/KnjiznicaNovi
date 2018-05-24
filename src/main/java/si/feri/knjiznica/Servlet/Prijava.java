package si.feri.knjiznica.Servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Prijava")
public class Prijava extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uporabnisko=request.getParameter("pUporabnisko");
        String geslo=request.getParameter("pGeslo");
        HttpSession session=request.getSession();
        if(uporabnisko.equals("jan")&&geslo.equals("geslo")) {

            session.setAttribute("uname", uporabnisko);
            System.out.print("dd");
        }
        System.out.print("dsd");
    }
}

package si.feri.knjiznica.controller;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import javax.script.*;

@Controller
public class MainController {


    @Value("Moj JSP")
    private String message = "Hello World";


    @RequestMapping(value = { "/", "/index" }, method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("message", this.message);
        return "Index";
    }

    @RequestMapping(value = { "/dodajKnj" }, method = RequestMethod.GET)
    public String dodajKnj(Model model) {
        model.addAttribute("message", this.message);
        return "DodajKnj";
    }

    @RequestMapping(value = { "/registracija" }, method = RequestMethod.GET)
    public String registracija(Model model) {
        model.addAttribute("message", this.message);
        return "Registracija";
    }

    @RequestMapping(value = { "/iskanje" }, method = RequestMethod.GET)
    public String iskanje(Model model) {
        model.addAttribute("message", this.message);

        return "IndexP";
    }




}

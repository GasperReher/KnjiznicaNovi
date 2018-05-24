package si.feri.knjiznica;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication
public class KnjiznicaNoviApp {


    public static void main(String[] args) {
        disableWarning();
        SpringApplication.run(KnjiznicaNoviApp.class, args);

    }

    public static void disableWarning() {
        System.err.close();
        System.setErr(System.out);
    }

}

package cz.czechitas.java2webapps.ukol5.controller;

import cz.czechitas.java2webapps.ukol5.entity.Gender;
import cz.czechitas.java2webapps.ukol5.entity.RegistraceForm;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Kontroler obsluhující registraci účastníků dětského tábora.
 */
@Controller
public class RegistraceController {
    @GetMapping("/")
    public ModelAndView formular() {
        ModelAndView modelAndView = new ModelAndView("formular");
        modelAndView.addObject("participant", new RegistraceForm());
        modelAndView.addObject("gender", Gender.values());
        return modelAndView;
    }

}

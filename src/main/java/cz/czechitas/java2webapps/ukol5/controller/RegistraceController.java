package cz.czechitas.java2webapps.ukol5.controller;

import cz.czechitas.java2webapps.ukol5.entity.RegistraceForm;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;
import java.time.Period;

/**
 * Kontroler obsluhující registraci účastníků dětského tábora.
 */
@Controller
public class RegistraceController {
    @GetMapping("/")
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView("/formular");
        modelAndView.addObject("ucastnik", new RegistraceForm());
        return modelAndView;
    }

    @PostMapping("/")
    public Object formular(@Valid @ModelAttribute("ucastnik") RegistraceForm form, BindingResult bindingResult) {
        Period period = form.getDatumNarozeni().until(LocalDate.now());
        int vek = period.getYears();
        if (bindingResult.hasErrors()) {
            if (vek < 9 || vek > 15) {
                bindingResult.rejectValue("datumNarozeni", "DateError", "tábor je pouze pro děti od 9 do 15 let.");
                return "/formular";
            }
            return "/formular";
        }
        return "/rekapitulace";
    }
}

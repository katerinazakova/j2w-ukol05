package cz.czechitas.java2webapps.ukol5.entity;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;
@Getter
@Setter
public class RegistraceForm {
    private String jmeno;
    private String prijmeni;
    private Gender pohlavi;
    private LocalDate datumNarozeni;
    private String turnus;
    private String email;
    private String telefon;
}


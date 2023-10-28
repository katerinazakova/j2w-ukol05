package cz.czechitas.java2webapps.ukol5.entity;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;
@Getter
@Setter
public class RegistraceForm {
    private String jmeno;
    private String prijmeni;
    private Gender gender;
    private LocalDate datumNarozeni;
    private final String turnus1 = "7.7. - 20.7.2024";
    private final String turnus2 = "21.7. - 3.8.2024";
    private final String turnus3 = "4.8. - 17.8.2024";
    private String email;
    private String telefon;

}


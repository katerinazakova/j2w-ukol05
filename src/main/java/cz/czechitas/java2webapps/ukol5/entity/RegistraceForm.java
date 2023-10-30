package cz.czechitas.java2webapps.ukol5.entity;

import jakarta.validation.constraints.AssertTrue;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Past;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;

@Getter
@Setter
public class RegistraceForm {
    @NotBlank
    private String jmeno;
    @NotBlank
    private String prijmeni;
    @AssertTrue
    private Gender pohlavi;
    @NotBlank
    @Past
    private LocalDate datumNarozeni;
    @AssertTrue
    private String turnus;
    @Email
    private String email;
    private String telefon;
}


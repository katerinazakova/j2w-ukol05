package cz.czechitas.java2webapps.ukol5.entity;

import jakarta.validation.constraints.*;
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
    @NotNull
    private Gender pohlavi;
    @NotNull
    @Past
    private LocalDate datumNarozeni;
    @NotBlank
    private String turnus;
    @Email
    private String email;
    private String telefon;
}


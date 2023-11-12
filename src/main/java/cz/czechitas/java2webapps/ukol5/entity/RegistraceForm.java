package cz.czechitas.java2webapps.ukol5.entity;

import jakarta.validation.constraints.*;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;
import java.util.EnumSet;

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
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private LocalDate datumNarozeni;
    @NotBlank
    private String turnus;
    @Email
    private String email;
    private String telefon;
    private EnumSet<UpominkovePredmetyEnum> darky = EnumSet.noneOf(UpominkovePredmetyEnum.class);
}


package cz.czechitas.java2webapps.ukol5.entity;

public enum Gender{

    FEMALE ("dívka"),
    MALE ("chlapec");

    private final String title;
    Gender (String title) {
        this.title = title;
    }

    public String getTitle(){
        return title;
    }

}

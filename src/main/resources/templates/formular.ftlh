[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace na letní dětský tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
<main>
    <h1>Registrace na letní dětský tábor</h1>
    <form class="formular" method="post" action="/">

        <label for="jmeno" class="radek">Jméno:</label>
        [@spring.formInput path="participiant.jmeno" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="prijmeni" class="radek">Příjmení:</label>
        [@spring.formInput path="participiant.prijmeni" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="datumNarozeni" class="radek">Datum narození:</label>
        [@spring.formInput path="participiant.datumNarozeni" fieldType="date"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">Pohlaví:</div>
        <div class="skupina">
            <div>
                <input id="pohlavi1" type="radio" name="pohlavi" value="DÍVKA"/>
                <label for="pohlavi1">dívka</label>
            </div>
            <div>
                <input id="pohlavi2" type="radio" name="pohlavi" value="CHLAPEC"/>
                <label for="pohlavi2">chlapec</label>
            </div>

            <label for="turnus" class="radek">Turnus:</label>
            [@spring.formSingleSelect path="participiant.turnus" options={
            "": "Turnus-1: 7.7. - 13.7. 2024",
            "1": "Turnus-2: 14.7. - 20.7. 2024",
            "2": "Turnus-3: 28.7. - 3.8. 2024",
            "3": "Turnus-4: 4.8. - 10.8 2024"
            } /]

            <label for="email" class="radek">E-mail (na rodiče):</label>
            [@spring.formInput path="participiant.email" fieldType="email"/]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <label for="telefon" class="radek">Telefon(na rodiče):</label>
            [@spring.formInput path="participiant.telefon" fieldType="tel"/]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <div class="radek">
                <button type="submit">Objednat</button>
            </div>
        </div>
    </form>
</main>
</body>
</html>

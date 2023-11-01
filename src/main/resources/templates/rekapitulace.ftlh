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
    <h1>Rekapitulace objednávky</h1>
    <form class="formular" method="post" action="/">

        <label for="jmeno" class="radek">Jméno:</label>
        <input for="jmeno" name="jmeno" type="text" value="${ucastnik.jmeno}" readonly="readonly"/>

        <label for="prijmeni" class="radek">Příjmení:</label>
        <input for="prijmeni" name="prijmeni" type="text" value="${ucastnik.prijmeni}" readonly="readonly"/>

        <label for="datumNarozeni" class="radek">Datum narození:</label>
        <input for="datumNarozeni" name="datumNarozeni" type="date" value="${ucastnik.datumNarozeni}"
               readonly="readonly"/>

        <div class="radek">Pohlaví:</div>
        <span class="skupina">
             <label>${ucastnik.pohlavi}</label>
        </span>

        <div class="turnus">Zvolený turnus:
            [#if ucastnik.turnus == "1"]
                Turnus 1: 7.7. - 13.7. 2024
            [#elseif ucastnik.turnus == "2"]
                Turnus 2: 14.7. - 20.7. 2024
            [#elseif ucastnik.turnus == "3"]
                Turnus 3: 28.7. - 3.8. 2024
            [#elseif ucastnik.turnus == "4"]
                Turnus 4: 4.8. - 10.8 2024
            [#else]
                neznámý turnus
            [/#if]
        </div>

        <label for="email" class="radek">E-mail (na rodiče):</label>
        <input for="email" name="email" type="email" value="${ucastnik.email}" readonly="readonly"/>

        <label for="telefon" class="radek">Telefon (na rodiče):</label>
        <input for="telefon" name="telefon" type="text" value="${ucastnik.telefon}" readonly="readonly"/>
    </form>
</main>
</body>
</html>

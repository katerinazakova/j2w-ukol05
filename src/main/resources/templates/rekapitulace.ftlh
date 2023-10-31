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
        <input for="jmeno" name="jmeno" type="text" value="${participiant.jmeno}" readonly="readonly" />

        <label for="prijmeni" class="radek">Příjmení:</label>
        <input for="prijmeni" name="prijmeni" type="text" value="${participiant.prijmeni}" readonly="readonly" />

        <label for="datumNarozeni" class="radek">Datum narození:</label>
        <input for="datumNarozeni" name="datumNarozeni" type="date" value="${participiant.datumNarozeni}" readonly="readonly" />

        <div class="radek">Pohlaví:</div>
        <div class="skupina">
            <div>
                <label for="pohlavi1">dívka</label>
                <input id="pohlavi1" type="radio" name="pohlavi" value="DÍVKA" readonly="readonly"/>
            </div>
            <div>
                <label for="pohlavi2">chlapec</label>
                <input id="pohlavi2" type="radio" name="pohlavi" value="CHLAPEC" readonly="readonly"/>
            </div>

            <div class="turnus">
                <label for="turnus" class="radek">Turnus:</label>
                <input for="turnus" name="turnus" type="text" value="${participiant.turnus}" readonly="readonly" />
            </div>
            <label for="email" class="radek">E-mail (na rodiče):</label>
            <input for="email" name="email" type="email" value="${participiant.email}" readonly="readonly" />

            <label for="telefon" class="radek">Telefon(na rodiče):</label>
            <input for="telefon" name="telefon" type="text" value="${participiant.telefon}" readonly="readonly" />
    </form>
</main>
</body>
</html>

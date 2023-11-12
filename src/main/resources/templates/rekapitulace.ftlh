[#ftl]
[#import "/spring.ftl" as spring]
[#import "_imports/common.ftlh" as c]
[@c.head title ="Registrace na letní dětský tábor" /]

<body>
<form class="formular" method="post" action="/">
    <h1>Rekapitulace objednávky</h1>
    <label for="jmeno" class="radek">Jméno:</label>
    <input for="jmeno" name="jmeno" type="text" value="${ucastnik.jmeno}" readonly="readonly"/>

    <label for="prijmeni" class="radek">Příjmení:</label>
    <input for="prijmeni" name="prijmeni" type="text" value="${ucastnik.prijmeni}" readonly="readonly"/>

    <label for="datumNarozeni" class="radek">Datum narození:</label>
    <input for="datumNarozeni" name="datumNarozeni" type="date" value="${ucastnik.datumNarozeni}"
           readonly="readonly"/>

    <div class="radek">Pohlaví:</div>
    <div class="skupina"><label>${ucastnik.pohlavi}</label></div>

    <div class="radek">Zvolený termín turnusu:
        <div class="skupina">
            [#if ucastnik.turnus == "1"]
                7.7. - 13.7. 2024
            [#elseif ucastnik.turnus == "2"]
                14.7. - 20.7. 2024
            [#elseif ucastnik.turnus == "3"]
                28.7. - 3.8. 2024
            [#elseif ucastnik.turnus == "4"]
                4.8. - 10.8 2024
            [#else]
                neznámý turnus
            [/#if]
        </div>
    </div>

    <label for="email" class="radek">E-mail (na rodiče):</label>
    <input class="input" for="email" name="email" type="email" value="${ucastnik.email}" readonly="readonly"/>

    <label for="telefon" class="radek">Telefon (na rodiče):</label>
    <input class="input" for="telefon" name="telefon" type="text" value="${ucastnik.telefon}" readonly="readonly"/>

    <div class="radek">Vybrané upomínkové předměty:</div>
    <div class="skupina"><label>${ucastnik.darky?join(", ")}</label></div>

</form>
</body>


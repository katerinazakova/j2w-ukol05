[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/head.ftlh"]
</head>
<body>
<form class="formular" method="post" action="/">
    <h1>Registrace na letní dětský tábor</h1>

    <div class="form-group">
        <label for="jmeno" class="radek">Jméno:</label>
        <div class="input">[@spring.formInput path="ucastnik.jmeno" /]</div>
    </div>
    <div class="error">[@spring.showErrors "<br>"/]</div>

    <div class="form-group">
        <label for="prijmeni" class="radek">Příjmení:</label>
        <div class="input">[@spring.formInput path="ucastnik.prijmeni" /]</div>
    </div>
    <div class="error">[@spring.showErrors "<br>"/]</div>

    <div class="form-group">
        <label for="datumNarozeni" class="radek">Datum narození:</label>
        <div class="input">[@spring.formInput path="ucastnik.datumNarozeni" fieldType="date"/]</div>
    </div>
    <div class="error">[@spring.showErrors "<br>"/]</div>

    <div class="form-group">
        <div class="radek">Pohlaví:</div>
        <div class="skupina">
                <input id="pohlavi1" type="radio" name="pohlavi" value="DÍVKA"/>
                <label for="pohlavi1">dívka</label>

                <input id="pohlavi2" type="radio" name="pohlavi" value="CHLAPEC"/>
                <label for="pohlavi2">chlapec</label>
            [@spring.bind "ucastnik.pohlavi"/]
            <div class="error">[@spring.showErrors "<br>"/]</div>
        </div>
    </div>

    <div class="form-group">
        <label for="turnus" class="radek">Turnus:</label>
        <div class="input">[@spring.formSingleSelect path="ucastnik.turnus" options={
            "": "",
            "1": "Turnus 1: 7. 7. - 13. 7. 2024",
            "2": "Turnus 2: 14. 7. - 20. 7. 2024",
            "3": "Turnus 3: 28. 7. - 3. 8. 2024",
            "4": "Turnus 4: 4. 8. - 10. 8. 2024"
            } /]</div>
    </div>
    <div class="error">[@spring.showErrors "<br>"/]</div>

    <div class="form-group">
        <label for="email" class="radek">E-mail (na rodiče):</label>
        <div class="input">[@spring.formInput path="ucastnik.email" fieldType="email"/]</div>
    </div>
    <div class="error">[@spring.showErrors "<br>"/]</div>

    <div class="form-group">
        <label for="telefon" class="radek">Telefon (na rodiče):</label>
        <div class="input">[@spring.formInput path="ucastnik.telefon" fieldType="tel"/]</div>
    </div>
    <div class="error">[@spring.showErrors "<br>"/]</div>

    <div class="form-group">
        <div class="radek">Upomínkové předměty:</div>
        <div class="skupina">
            <input id="darky.ksiltovka" type="checkbox" name="darky" value="KŠILTOVKA" [#if ucastnik.darky?seq_contains("KŠILTOVKA")]checked[/#if]/>
            <label for="darky.ksiltovka">kšiltovka</label>

            <input id="darky.batoh" type="checkbox" name="darky" value="BAŤOH" [#if ucastnik.darky?seq_contains("BAŤOH")]checked[/#if]/>
            <label for="darky.batoh">baťoh</label>

            <input id="darky.tricko" type="checkbox" name="darky" value="TRIČKO" [#if ucastnik.darky?seq_contains("TRIČKO")]checked[/#if]/>
            <label for="darky.tricko">tričko</label>

            <input id="darky.satek" type="checkbox" name="darek" value="ŠÁTEK" [#if ucastnik.darky?seq_contains("ŠÁTEK")]checked[/#if]/>
            <label for="darky.satek">šátek</label>

            [@spring.bind "ucastnik.darky"/]
            <div class="error">[@spring.showErrors "<br>"/]</div>
        </div>
    </div>




    <div class="form-group">
        <div class="radek">
            <button type="submit">Objednat</button>
        </div>
    </div>
</form>
</body>
</html>

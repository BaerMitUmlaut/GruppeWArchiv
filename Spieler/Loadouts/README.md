
###Funktion:
>Ausrüstung von Spielern mit vorgefertigten Loadouts. 

###Nutzung:
>-Öffne die <i>Seite</i>_loadout (Die Möglichkeiten sind „west“,“east“,"indipendent" und „civilian“)im Ordner „loadouts“. Dieser ist Teil des W-Frameworks. <br>             
>-Unter dem „Kopf“ des Skriptes   

<table border="1" cellpadding="0" cellspacing="2" width="400">
<tbody>
<tr><td>_class = [_this,0,"",[""]] call BIS_fnc_param;  <br>   
if (_class == "") exitWith {};       <br>   
_class = toUpper _class;                      <br>   
_obj = [_this,1,player,[objNull]] call BIS_fnc_param;  <br>   
#define this _obj</font></td>
</tr>
</tbody>
</table>
>beginnen die jeweiligen Klassenspezifischen Loadouts. 


>-ein Loadout wird mit der Syntax:           <br>

<table width="400" border="1" cellpadding="0" cellspacing="2">
 <tr><td>
if (_class == "Klassenname")  <br>
 exitWith { <br>
//Loadout      <br>
};
</td>  
</tr>
</table>

>definiert.<br>

>-In die geschwungenen Klammern kann man nun das Loadout eines Soldaten bestimmen. <br>
>-Dies kann für beliebig viele Soldatenklassen durchgeführt werden.

>Ein Loadout kannst du einfach aus dem Arsenal herauskopieren.
>Hierzu öffnest du das Arsenal, rüstest deinen Soldaten aus und drückt auf "Exportieren".
>Nun wurde ein Text in deine Zwischenablage gespeichert, denn du einfach in deine Loadoutdatei schreiben kannst. (auf die Klammern achten)


>-Erstelle einen Soldaten
>Füge diesen Code in die INIT Zeile des Soldaten

<table width="400" border="1" cellpadding="0" cellspacing="2">
 <tr>
<td>
this setVariable ["loadout", "Klassenname"];  <br>
</td> 
 </tr>
</table>

###Erläuterung:
>Ein großer Vorteil des Loadoutskripts von Fett Li ist die Möglichkeit Makros zu erstellen und mit dem #include Befehl einzubinden.        <br>

>Damit werden die fn_x_loadout.sqf Dateien übersichtlicher und man hat die Möglichkeit die mitunter sperrigen Classnames auf ein verständliches Maß zu reduzieren. <br>

>Für repetitive Loadout-Teile wie Munition für Sturmgewehre, Kompass, Uhr, Funkgerät Medizinische Ausrüstung etc. eignet sich dies ebenfalls gut, da so schnell für alle Einheiten,<br>
> die ein gemeinsames Makro nutzen, Änderungen vorgenommen werden können.

 <br>
><b>Ein Beispiel wäre:</b>

 <table width="400" border="1" cellpadding="0" cellspacing="2">
 <tr>
<td><font size="+1">
#######include "ace_macros.sqf” <br>
#######include "loadout_macros_nato.sqf"  <br>
#######include "loadout_macros_us.sqf"   <br>

[Header] // der oben angesprochene Header  <br>
[... ]//Andere Loadouts                 <br>
                                        <br>
if (_class == "NATODM") exitWith {     <br>
                        EMPTY           <br>
            this addWeapon "Binocular";   <br>
                                          <br>
            UNIFORM_MTP_FIGHTER           <br>
            STANDARD                      <br>
            CYRUS                        <br>
            SIDEARM                      <br>
            SOLDIER_MEDIC_LOADOUT        <br>
                                            <br>
            this setVariable ["ace_medical_medicClass", 0, true];  <br>
};
</td>  </font>
 </tr>
</table>
>Wie zu sehen ist kann im Loadout ebenfalls die „Fähigkeit“ einer Klasse definiert werden, in diesem Fall, dass sie medizinisch ein normaler Schütze ist.<br>
>Bisher (15.11.15) mögliche „Fähigkeiten“ sind:


<table width="500" border="1" cellpadding="0" cellspacing="2">
 <tr>
  <th scope="col"></th>
  <th scope="col">Medizinisch</th>
  <th scope="col">Reperatur</th>
 </tr>
 <tr>
  <th scope="row">0</th>
  <td>Soldat</td>
  <td>Soldat</td>
 </tr>
 <tr>
  <th scope="row">1</th>
  <td>Ersthelfer</td>
  <td>Engineer</td>
 </tr>
 <tr>
  <th scope="row">2</th>
  <td> Doktor</td>
  <td>Rep. Spezialist</td>
 </tr>
 <tr>
  <th width="250" scope="col"></th>
  <th width="250" scope="col">"ace_medical_medicClass"</th>
  <th width="250"scope="col">„ACE_IsEngineer“ </th>
 </tr>
</table>

<p></p>

<b>Eine Fähigkeit wird mittels dieser Syntax zugewiesen:            </b>
this setVariable ["x", 0, true];

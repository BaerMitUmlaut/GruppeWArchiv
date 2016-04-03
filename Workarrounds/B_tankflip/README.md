
> ##[Download](https://github.com/Mezilsa/Workarrounds/releases/download/0.2.1/B_tankflip.sqf)

> ###Funktion:
> 
> 
> Dreht ein umgekipptes Fahrzeug um.
> 
> ###Nutzung:
> 
> -lade folgende Datei herunter und speichere sie in deinem Scripts Ordner
> 
> 
> 
> -schreibe diesen Text in die InitPlayerLocal.sqf
> 
> 
> 
> <table border="1" cellpadding="0" cellspacing="2" width="700">
> 
> <tbody>
> 
> <tr>
> <td><font size="+1">#include "scripts\b_tankflip.sqf"</font></td>
> </tr>
> </tbody>
> </table>
> 
> <font size="+1">
> -stelle sicher, dass der Classname deines Fahrzeuges bereits im Script vorhanden ist. Ansonsten füge ihn hinzu.
> 
> <table border="1" cellpadding="0" cellspacing="2" width="1400">
> <tbody>
> <tr>
> <td>[...]  
> [<font color="#FF0000">"CLASSNAME"</font>, 0, ["ACE_MainActions"], _actFlip] call ace_interact_menu_fnc_addActionToClass;</font></td>
> </tr>
> </tbody>
> </table>
> Nun ist im AceInteraction Menü ein neuer Eintrag zu finden. Mit diesem kann der Panzer umgedreht werden.
> 
> ###Erläuterung:
> - Beim Aufrufen des Scripts in der Nähe von Hügeln (direkt am Hügel) kann der Panzer in den Hügel Clippen und explodieren.
> 

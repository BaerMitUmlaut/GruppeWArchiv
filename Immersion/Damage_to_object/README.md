#Damage_to_object
> ###Funktion:
> 
> 
>Fügt einem Objekt Schaden von 0 bis 1 zu.   
> 
> ###Nutzung:
> 
>-Erstelle ein Gamelogic auf dem zu zerstörenden Objekt  <br>       
> 
> <b>-füge folgenden Code in die INIT-Zeile der Gamelogic  </b>  
> 

|if (isServer && random 1 > 0.25) then <br>{   _tower =  nearestObjects [getPos this,[],10] select 1;    <font color="#FF0000">name_der_gamelogic</font> setDamage <font color="#0000FF">0.91</font>;  };  |
|------------------------------------------|


> ###Erläuterung:
>-Wirkt auch gegen Leuchttürme     
>

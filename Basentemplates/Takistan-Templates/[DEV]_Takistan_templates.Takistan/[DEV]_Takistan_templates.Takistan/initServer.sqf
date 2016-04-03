
/*
 *		Die initServer.sqf
 *
 * Die initServer.sqf wird bei Missionsstart und nur bei Missionsstart auf dem Server ausgeführt.
 * Hier werden am besten Skripte ausgeführt, die nur einmal und nur auf dem Server ausgeführt werden sollen,
 * z.B. das Beladen von Fahrzeugen. Auch Serverseitige Variablen sollten hier deklariert werden.
 *
 * Weitere Informationen findet ihr hier:
 *		https://community.bistudio.com/wiki/Initialization_Order
 *		https://community.bistudio.com/wiki/Event_Scripts
 */

 	warrior setObjectTextureGlobal [1, "pics\apc_tracked_03_ext_indp_co.paa"];
	warrior setObjectTextureGlobal [0, "pics\apc_tracked_03_ext2_indp_co.paa"];
	

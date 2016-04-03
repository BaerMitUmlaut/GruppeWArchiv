/* Schreibe in diese Datei das Briefing
 *
 * Das Briefing wird vom W_FRAMEWORK mit eingebunden
 * Eintraege sind nach folgendem Schema eingebunden:
 *
 * player createDiaryRecord ["Diary",["ueBERSCHRIFT","INHALT"]];
 *
 * Die gebraeuchlichsten Formatierungsbefehle sind:
 *	<br/>	- Zeilenumbruch
 *	<t/>	- Tabulator
 *
 * Ein Beispiel ist unten mit angegeben.
 *
 */

player createDiaryRecord ["Diary",["Technisches","
	Diese Mission wurde mit dem Missionstemplate von Gruppe W von [W] Fett_Li erstellt.<br/>
	Inhalt dieses Templates ist:<br/>
	<t/>TAW_VD - Viewdistancescript<br/>
	<t/>W_Teleporter - Teleport-Menue<br/>
	<t/>W_Loadouts - Loadoutskripte<br/>
	<br/>
	ACE - Einstellungen:<br/>
	<t/>Basejumper<br/>
	<t/>TFAR Kiste am Sammelpunkt vorhanden<br/>
	<t/>Karte: Altis<br/>
	<t/>Gespielte Fraktionen:<br/>
	<t/>Blufor:	USA<br/>
	<t/>Opfor:		CSAT<br/>
	<t/>Greenfor:	AAF<br/>
	
	<br/>
"]];

player createDiaryRecord ["Diary",["Aufklaerung und Wetter","
	
<br/>

	<br/>
"]];
if (side player == blufor) then {
player createDiaryRecord ["Diary",["Auftrag","
1. Bekommen sie ein Gespür für die Situation und überwachen sie die Frequenz LR 40.7, die Notfallfrequenz für Kooperative Missionen.<br/><br/>
2. Erlangen sie die Dokumente die sich in den Händen der AAF befinden. Nutzen sie die Drohne um deren Standort zu finden.<br/><br/>
3. Wenn sie die Dokumente nicht freiwillig erhalten erobern sie die Stellung der AAF und lassen keine Überlebenden zurück.
"]];
};

if (side player == opfor) then {
player createDiaryRecord ["Diary",["Auftrag","
1. Untersuchen sie den Ort des Überfalls um einen die Identität der Angreifer zu ermitteln.<br/><br/>	
2. Erobern sie die Dokumente zurück.
"]];
};

if (side player == independent) then {
player createDiaryRecord ["Diary",["Auftrag","
1. Sichern sie die Dokumente vor einen Rückeroberungsversuch der CSAT.<br/><br/>
2. Übergeben sie die Dokumente der Nato gegen eine angemessene Bezahlung. Die Frequenz LR 40.7 ist dafür freigegeben.	
"]];
};

if (side player == blufor) then {
player createDiaryRecord ["Diary",["Spezifische Lage der Nato","
Guten Morgen Gentelman!<br/>
Unser Informanten in den Reihen der CSAT und den kläglichen Resten der AAF haben uns darüber informiert, dass die CSAT einige Dokumente an ein AAF Komando verloren.
Jedoch waren sie nicht freundlich genug uns mitzuteilen in welcher Zelle der AAF sich die Dokumente nun befinden, noch welche Einheit der CSAT beauftragt werden wird die Dokumente zurück zu holen.<br/>
Ebenso waren die Informanten nicht in der Lage uns vorher darüber zu informieren, dass so eine Aktion geplant war. <br/>
Die Nato opperiert gerade in der Nähe von Sofia und es ist ein glücklicher Zufall das Ihre Männer sich auf einer Erkundungsmission befinden. 
Das Oberkomando war in der Lage Ihnen eine MQGreyhawk auf einem improvisierten Landeplatz zur Verfügung zu stellen mit der sie schnell die unterschiedlichen Truppenbewegungen überwachen können. Ihr UAV Operator sollte in der Lage sein sie mit genug Daten zu versorgen.<br/><br/>

Die Beziehung zur AAF ist in den letzten Jahren besser geworden, dennoch hat sie deutlich an Stärke verloren und dieser Fraktion darf, wie wir vor fünf Jahren lernen mussten, nicht vorbehaltslos vertraut werden. Es besteht eine konkrete Möglichkeit, dass sie uns in einen Hinterhalt locken möchten.<br/>
Nichts desto trotz sind diese Dokumente wichtig. Instruieren sie ihre Männer darüber stillschweigen zu bewahren.<br/>Eine Eskalation ist nicht erwünscht, wäre aber kein Beinbruch.<br/>
<br/>
General Fibers
"]];
};

if (side player == opfor) then {
player createDiaryRecord ["Diary",["Spezifische Lage der CSAT","
Guten Morgen!<br/>

diese Nacht hat jemand einen Dokumententransport bei Drimea, in der nähe von Zaros, überfallen. <br/>
Das Oberkomando hat die unverzügliche Rückführung der Dokumente oder deren Vernichtung angeordnet.<br/>
Unser Platoon wird sich dieser Sache annehmen. <br/>
Vermutlich hat die Nato ihre Finger in der Sache also zögern sie nicht und reagieren sie schnell.<br/><br/>
Colonel Grefkan
"]];
};

if (side player == independent) then {
player createDiaryRecord ["Diary",["Spezifische Lage der AAF","
Guten Morgen meine Herren, <br/>
<br/>
unsere Kommandos haben den Schweinen der CSAT wichtige Dokumente entwendet die sich nun in unserem Gewahrsam befinden. Diese Dokumente koennen das Blatt auf Altis wenden wenn sie an die richtige Leute gelangen. <br/>
Die Nato hat uns trotz unserer Entscheidungen unterstuetzt und uns die letzten zwei Jahre mit Waffen und Ausruestung versorgt, mit uns zusammen opperiert und ich weiß, dass viele von euch Freunde unter den Nato-Truppen hat.<br/>
Sicher ist der CSAT aufgefallen, dass ihnen diese wichtigen Dokumente abhanden gekommen sind und sie werden sicher ihr mechanisiertes Platoon in Kavalla mobilisieren um sie zurueck zu bringen.<br/>
Ihnen wurden CSWs, zwei Moerser, vier TPz und ein Notfalllazaret in einem Zamak zur Verfuegung gestellt. In diesem sind auch die Dokumente untergebracht. Sorgen sie dafuer, dass sie ihre Stellung halten. Unter allen Umstaenden!<br/>
<br/>
Major T. Sunclover
	
"]];
};
player createDiaryRecord ["Diary",["Hintergrund","
	
Wir schreiben das Jahr 2040. Der Kampf zwischen Nato und der CSAT tobt nun schon seit fuenf Jahren auf der Welt und noch immer stehen sich auf der Insel Altis Truppen beider Fraktionen gegenueber. <br/>
Die AAF, die sich zunaechst der CSAT angeschlossen hat wurde 2038 in einer fuenf woechigen Kampange der CSAT nahezu ausgeloescht und nurnoch Reste der ehemaligen Armee der Republik Altis haben das Massaker ueberlebt. <br/>
Es gibt Geruechte, dass die Nato die AAF unterstuetzt, doch genaues wissen wohl nur die betreffenden Fraktionen. Sicher ist nur, dass die CSAT und AAF sich feindlich gegenueber stehen.
"]];
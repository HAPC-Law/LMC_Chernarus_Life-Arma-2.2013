_text = [

"Welcome to <t color='#9090FF'>Life Mod Corp</t>! Please take the time to read the rules below.<br />",

"<t underline='true' color='#ff0000'>RULES</t><br/>
 1. Cops restricted you must apply to play<br/>
 2. Please apply on our fourm for cop access<br />
 3. TeamSpeak REQUIRED FOR ALL OR YOU WILL BE KICKED\BANNED<br />
 4. Must declare terrorism before killing!<br />
 5. No building in Chernogorsk -- unless cop!<br />
 6. Terrorists may not kill in NOKILLZONE'S.<br />
 7. Fines and Jail times are at cops discretion.<br />

<t underline='true' color='#ff0000'>IMPORTANT</t><br/>
PLAYING HERE REQUIRES ALL TO BE ON TeamSpeak<br />
<t underline='true' color='#ff0000'>Contact Info</t><br/>
  Team Speak:<br />
  TS.goguerrero.com<br />
  108.34.46.144<br />
  Website : http://lmc.enjin.com/<br />
  <br /><br /><br />"

];

_t = [];
{
	_t = _t + [(parseText _x)];
} foreach _text;
_text = _t;

"Welcome to LMC!" hintC _text;
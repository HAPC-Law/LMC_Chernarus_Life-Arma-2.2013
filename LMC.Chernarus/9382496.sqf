_text = [

"Welcome to <t color='#9090FF'>Life Mod Corp</t>! Please take the time to read the rules below.<br />",

"<t underline='true' color='#ff0000'>RULES</t><br/>
 1. Must declare terrorism before killing!<br />
 2. No building in Chernogorsk -- unless cop!<br />
 3. Terrorists cannot kill civs (unless put in a roleplay fashion) - only cops.<br />
 4. Fines and Jail times are at cops discretion.<br />

<t underline='true' color='#ff0000'>Contact Info</t><br/>
  Team Speak:<br />
  TS.LIFEMODCORP.COM<br />
  Website : http://lifemodcorp.com/<br />
  <br /><br /><br />"

];

_t = [];
{
	_t = _t + [(parseText _x)];
} foreach _text;
_text = _t;

"Welcome to LMC!" hintC _text;
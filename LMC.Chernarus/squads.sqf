_this = _this select 3;
_art  = _this select 0;

if(_art == "create") then

{

_text = _this select 1;
_name = name player;
_FuckOffMoneyHackers = 'moneyHackerFuckOff' call INV_getitemamount;
_exitvar=false;

if(_text == "cops")exitwith{player groupchat "you can't use that name"};

if(squadmember)exitwith{player groupchat "you are already in a squad!"};

for "_c" from 0 to (count squadsarray - 1) do {if (((squadsarray select _c) select 0) == _text) exitWith {_exitvar = true;};};

if(_exitvar)exitwith{player groupchat "a squad with the same name already exists!"};

if ((_text call ISSE_str_Length) > 30 or (_text call ISSE_str_Length) < 3) exitWith {player groupChat "the entered text is either too long or too short";};

if(_FuckOffMoneyHackers < base_squadcreatecost)exitwith{player groupchat "You don't have enough money to create this squad!"};

['moneyHackerFuckOff', -base_squadcreatecost] call INV_addinventoryitem;

format['squadsarray = squadsarray + [["%1", ["%2"], true]]', _text, _name] call broadcast;

player groupchat format["you have created a new squad called %1!", _text];

};

if(_art == "join") then

{

_squad = _this select 1;
_name = name player;
_id   = -1;

if(squadmember)exitwith{player groupchat "you are already in a squad!"};

for "_c" from 0 to (count squadsarray - 1) do {if (((squadsarray select _c) select 0) == _squad) exitWith {_id = _c;};};

if(_id == -1)exitwith{player groupchat "this squad no longer exists!"};

_squadarray = squadsarray select _id;
_members   = _squadarray select 1;
_canjoin   = _squadarray select 2;

if(!_canjoin)exitwith{player groupchat "You are not able to join this squad because the leader of this squad is not currently not recruiting"};

_members   = _members + [_name];
_squadarray set[1, _members];

format['squadsarray set[%1, %2]', _id, _squadarray] call broadcast;

player groupchat format["you have joined %1!", _squad];

};

if(_art == "leave") then

{

if(!squadmember)exitwith{player groupchat "you are not in a squad!"};

for "_c" from 0 to (count squadsarray - 1) do 

	{

	_squadarray = squadsarray select _c;
	_squad	   = _squadarray select 0;
	_members   = _squadarray select 1;
	_name	   = name player;
		
	if(_name in _members)then

		{

		_members = _members - [_name];
		_squadarray set[1, _members];
		format['squadsarray set[%1, %2]', _c, _squadarray] call broadcast;
		player groupchat "you left your squad!";
		squadmember=false;

		};

	};

};

if(_art == "kick") then

{

if((_this select 1) == "notingame")exitwith{player groupchat "you cannot kick members unless they are ingame!"};

_cop = call compile format["%1", _this select 1];

if(player == _cop)exitwith{player groupchat "you can't kick yourself, silly!"};

for "_c" from 0 to (count squadsarray - 1) do 

	{

	_squadarray = squadsarray select _c;
	_squad	   = _squadarray select 0;
	_members   = _squadarray select 1;
	_name	   = name player;
		
	if(_name in _members)then

		{

		_members = _members - [(name _cop)];
		_squadarray set[1, _members];
		format['if(player == %3)then{player groupchat "You have been kicked out of your squad!"; squadmember = false;}; squadsarray set[%1, %2]', _c, _squadarray, _cop] call broadcast;

		};

	player groupchat format["you kicked %1 from your squad!", name _cop];
	
	};

};

if(_art == "allowjoin") then

{

if(_this select 1 == "")exitwith{player groupchat "you must select either yes or no!"};

_bool = call compile format["%1", _this select 1];

for "_c" from 0 to (count squadsarray - 1) do 

	{

	_squadarray = squadsarray select _c;
	_squad	   = _squadarray select 0;
	_members   = _squadarray select 1;
	_name	   = name player;
		
	if(_name in _members)then

		{

		_squadarray set[2, _bool];
		format['squadsarray set[%1, %2]', _c, _squadarray] call broadcast;
		if(_bool)then{player groupchat "cops can now join your squad"}else{player groupchat "cops can no longer join your squad"};

		};

	};

};

if(_art == "clientloop") then

{

sleep 10;

private ["_mysquad", "_mymembers", "_enmembers"];

startgroup = group player;

for "_c" from 0 to (count squadsarray - 1) do 

	{

	_squadarray = squadsarray select _c;
	_squad	   = _squadarray select 0;
	_members   = _squadarray select 1;
	_name	   = name player;
		
	if(_name in _members and iscop)then

		{

		_members = _members - [_name];
		_squadarray set[1, _members];
		format['squadsarray set[%1, %2]', _c, _squadarray] call broadcast;
		
		};

	};

while {iscop} do

	{

	for "_c" from 0 to (count squadsarray - 1) do 

		{

		_squadarray = squadsarray select _c;
		_squad	   = _squadarray select 0;
		_members   = _squadarray select 1;
		
		if(count _members > 0) then

			{

			_leader    = _members select 0;
			_lunit	   = [_leader, coparray] call INV_findunit;
			if(isnull _lunit and !(player in (units startgroup)))then{[player] joinsilent startgroup};
			if(isnull _lunit)exitwith{};
			_group	   = group _lunit;
			_name      = name player;

			if(leader _group != _lunit)then{_group selectleader _lunit};
			if(player == _lunit and !squadleader)then{squadleader = true; [player] joinsilent startgroup;};
			if(squadleader and player != _lunit and _name in _members)then{squadleader = false};
			if(_name in _members and !squadmember)then{squadmember = true};
			if(_name in _members and squadmember)then{_mysquad = _squad; _mymembers = _members};
			if(_name in _members and player != _lunit and !(player in (units _group))) then {[player] joinsilent _group;};

			};

		};

	if(!squadmember and !(player in (units startgroup)))then{[player] joinsilent startgroup};

	for "_c" from 0 to (count squadareas - 1) do 

		{

		_squadarea = squadareas select _c;
		_control  = _squadarea getvariable "control";
		
		if(player distance _squadarea < 10 and (getpos _squadarea select 2) < 0 and _control == (call INV_mysquad))then{_squadarea setpos [getpos _squadarea select 0, getpos _squadarea select 1, (getpos _squadarea select 2) + 0.1];};
		
		};

	sleep 1;

	};

};

if(_art == "serverloop") then

{

_counter = 0;

while {true} do

	{

	for "_c" from 0 to (count squadsarray - 1) do 

		{

		_squadarray = squadsarray select _c;
		_members   = _squadarray select 1;
		
		if(_counter >= squaddeltime and count _members == 0)exitwith{format['squadsarray set[%1, 0]; squadsarray = squadsarray - [0];', _c] call broadcast};

		_lname	   = _members select 0;
			
		if(isnull ([_lname, playerarray] call INV_findunit))then

			{

			_members = _members - [_lname];
			_squadarray set[1, _members];
			format['squadsarray set[%1, %2]', _c, _squadarray] call broadcast;

			};

		};

	if(_counter >= squaddeltime)then{_counter = 0};

	_counter = _counter + 60;

	sleep 60;

	};

};
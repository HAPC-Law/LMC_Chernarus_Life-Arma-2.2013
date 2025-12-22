// Drugs Scripts
// drugs.sqf

_art = _this select 0;

if (_art == "init") then 

{
	
INV_drogenusesperre = 0;
INV_drogen_usesperre = FALSE;
INV_DrogenCounter = 0;

};
	
if (_art == "use") then 

{

_item   = _this select 1;
_anzahl = _this select 2;
if (INV_drogenusesperre == 1) exitWith {player groupChat localize "STRS_inv_item_druguse_toomany";};
if (INV_drogen_usesperre) then {INV_drogenusesperre = 1;};
INV_DrogenCounter =  INV_DrogenCounter + _anzahl;
[_item, -(_anzahl)] call INV_AddInventoryItem;
_endeZeit = time + 60 + (_anzahl * 10);

if (_item == "lsd") then 

	{
	player playmove "CtsPercMstpSnonWnonDnon_idle32podrbaniNanose";
	"wetDistortion" ppEffectEnable true;
	"wetDistortion" ppEffectAdjust [20.5, -10, 1, 4.1, 3.7, 2.5, 1.85, 0.0051, 0.0051, 0.0051, 0.0051, 0.5, 0.3, 10, 6.0];
	"wetDistortion" ppEffectCommit 5;
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectAdjust [0.2,0.2,true]; 
	"chromAberration" ppEffectCommit 1;

	//"colorInversion" ppEffectEnable true;
	//"colorInversion" ppEffectAdjust [1, 1, 1];
	//"colorInversion" ppEffectCommit 1;

	while {time < _endeZeit} do 

		{

		_position = getpos player;
		_weite = 100;
		_x = _position select 0;
		_y = _position select 1;
		_z = _position select 2;
		_w1 = (random _weite) - (random _weite);
		_w2 = (random _weite) - (random _weite);
		_w3 = random 7;
		_f1 = random 1;
		_f2 = random 1;
		_f3 = random 1;
		_g1 = random 5;
		_g2 = random 10;
		_g3 = random 5;
		
		if (_w1 + _w2 > 100) then 

			{

			_g1 = _g1 * 2;
			_g2 = _g2 * 2;
			_g3 = _g3 * 2;
				
			};
				
		_v1 = random 0.05;
		_v2 = random 0.05;
		_v3 = 0.1 - random 0.075;
		Drop ["\ca\data\cl_basic", "", "Billboard", 1, 60, [_x + _w1, _y + _w2, _z + _w3], [_v1, _v2, _v3], 1, 1.275, 1, 0, [_g1, _g2, _g3], [ [_f1, _f2, _f3, 1], [_f2, _f1, _f3, 1], [_f3, _f2, _f1, 1] ], [0, 0, 0], 3, 0.2, "", "", ""];
		sleep 0.001;

		sleep 50;
		
		"wetDistortion" ppEffectEnable true;
	"wetDistortion" ppEffectAdjust [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
	"wetDistortion" ppEffectCommit 3;
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectAdjust [0,0,true]; 
	"chromAberration" ppEffectCommit 3;	


		};
		

	};

if (_item == "Cocaine") then 

	{

	while {time < _endeZeit} do 

		{
	player playmove "CtsPercMstpSnonWnonDnon_idle32podrbaniNanose";
		_force = random 10;
"RadialBlur" ppEffectEnable true; 
"RadialBlur" ppEffectAdjust[10.01, 2.03, 1, 5.36];
"RadialBlur" ppEffectCommit 5;		
"chromAberration" ppEffectEnable true;
		"chromAberration" ppEffectAdjust [_force / 12, _force / 12, false];
		"chromAberration" ppEffectCommit (0.3 + random 0.1);
		waituntil {ppEffectCommitted "chromAberration"};
		sleep 0.2;
		"chromAberration" ppEffectAdjust [_force / -24,_force / -24, true];
		"chromAberration" ppEffectCommit (0.6 + random 0.2);
		waituntil {ppEffectCommitted "chromAberration"};
		sleep 0.2;
		"chromAberration" ppEffectAdjust [0,0, true];
		"chromAberration" ppEffectCommit (1.2 + random 0.4);
		
		sleep 1;	

	sleep 50;
		
		"wetDistortion" ppEffectEnable true;
	"wetDistortion" ppEffectAdjust [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
	"wetDistortion" ppEffectCommit 3;
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectAdjust [0,0,true]; 
	"chromAberration" ppEffectCommit 3;		
waitUntil {ppEffectCommitted "RadialBlur"}; 
"RadialBlur" ppEffectEnable true; 
"RadialBlur" ppEffectAdjust[0.0, 0.0, 0, 0.0];
"RadialBlur" ppEffectCommit 3;
			
		};
		
	};
		
if (_item == "marijuana") then 

	{

	while {time < _endeZeit} do 

		{
	player playmove "CtsPercMstpSnonWnonDnon_idle32podrbaniNanose";
		"colorCorrections" ppEffectAdjust[ 1.0, 0.3, -0.00115, [2.82, 3.6, 2.71,    -0.001],[2.8+ random 1.1, 0.9+ random 1.1, 1.5+ random 1.1, 1.1140],[   0.34+ random 1.1, 1.83,    -0.5, 2.59]] ;    "colorCorrections" ppEffectCommit 10;  "colorCorrections"    ppEffectEnable    true;

		"chromAberration" ppEffectEnable true;
		"chromAberration" ppEffectAdjust [0.51,0.01,true]; 
		"chromAberration" ppEffectCommit 1;
	"dynamicblur" ppEffectEnable true;
		"dynamicblur" ppEffectAdjust [1.2]; 
		"dynamicblur" ppEffectCommit 15;

		sleep 3;

	sleep 30;
		
		"wetDistortion" ppEffectEnable true;
	"wetDistortion" ppEffectAdjust [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
	"wetDistortion" ppEffectCommit 3;
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectAdjust [0,0,true]; 
	"chromAberration" ppEffectCommit 3;	
"dynamicblur" ppEffectEnable true;
		"dynamicblur" ppEffectAdjust [0]; 
		"dynamicblur" ppEffectCommit 20;
	
		};
		
	};



if (_item == "Special_Brownie") then 

	{

	while {time < _endeZeit} do 

		{
	player playmove "CtsPercMstpSnonWnonDnon_idle32podrbaniNanose";
		"colorCorrections" ppEffectAdjust[ 1.0, 0.3, -0.00015, [2.82, 3.6, 2.71,    -0.001],[2.8+ random 1.1, 0.9+ random 1.1, 1.5+ random 1.1, 1.1140],[   0.34+ random 1.1, 1.83,    -0.5, 3.59]] ;    "colorCorrections" ppEffectCommit 10;  "colorCorrections"    ppEffectEnable    true;

		"chromAberration" ppEffectEnable true;
		"chromAberration" ppEffectAdjust [0.51,0.01,true]; 
		"chromAberration" ppEffectCommit 1;
	"dynamicblur" ppEffectEnable true;
		"dynamicblur" ppEffectAdjust [.8]; 
		"dynamicblur" ppEffectCommit 25;

		sleep 3;

	sleep 50;
		
		"wetDistortion" ppEffectEnable true;
	"wetDistortion" ppEffectAdjust [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
	"wetDistortion" ppEffectCommit 3;
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectAdjust [0,0,true]; 
	"chromAberration" ppEffectCommit 3;	
"dynamicblur" ppEffectEnable true;
		"dynamicblur" ppEffectAdjust [0]; 
		"dynamicblur" ppEffectCommit 20;
	
		};
		
	};

if (_item == "Xanax_Pills") then 

	{

	while {alive player} do 

		{


	player playmove "CtsPercMstpSnonWnonDnon_idle32podrbaniNanose";

	sleep 5;
	player groupchat "You feel sick.";
"RadialBlur" ppEffectEnable true; 
"RadialBlur" ppEffectAdjust[0.21,0.53, 1, 0.36];
"RadialBlur" ppEffectCommit 1;
"chromAberration" ppEffectEnable true;
		"chromAberration" ppEffectAdjust [0.011,0.2,true]; 
		"chromAberration" ppEffectCommit 1;
sleep 10;


"RadialBlur" ppEffectEnable true; 
"RadialBlur" ppEffectAdjust[1.01, 1.03, 1, 1.36];
"RadialBlur" ppEffectCommit 1;
"chromAberration" ppEffectEnable true;
		"chromAberration" ppEffectAdjust [0.02,0.02,true]; 
		"chromAberration" ppEffectCommit 1;

sleep 4;
"RadialBlur" ppEffectEnable true; 
"RadialBlur" ppEffectAdjust[0.01, 0.03, 1, 0.36];
"RadialBlur" ppEffectCommit 1;
"chromAberration" ppEffectEnable true;
		"chromAberration" ppEffectAdjust [0.11,0.2,true]; 
		"chromAberration" ppEffectCommit 1;
sleep 10;
player groupchat "Your heart is pounding at an unstable rate!";
execvm "xanax.sqf";
"RadialBlur" ppEffectEnable true; 
"RadialBlur" ppEffectAdjust[5.01, 5.03, 1, 1.36];
"RadialBlur" ppEffectCommit 1;

titleText ["", "BLACK", .1];
sleep .5;
titleFadeOut .5;

sleep 2;
"RadialBlur" ppEffectEnable true; 
"RadialBlur" ppEffectAdjust[0, 0, 0, 0];
"RadialBlur" ppEffectCommit 1;
"chromAberration" ppEffectEnable true;
		"chromAberration" ppEffectAdjust [0.011,0.02,true]; 
		"chromAberration" ppEffectCommit 1;
titleText ["", "BLACK", .1];
sleep .5;
titleFadeOut .5;

sleep 2;

"RadialBlur" ppEffectEnable true; 
"RadialBlur" ppEffectAdjust[5.01, 5.03, 1, 1.36];
"RadialBlur" ppEffectCommit 1;
"chromAberration" ppEffectEnable true;
		"chromAberration" ppEffectAdjust [0.11,0.2,true]; 
		"chromAberration" ppEffectCommit 1;
titleText ["", "BLACK", .1];
sleep .5;
titleFadeOut .5;

sleep 2;
"RadialBlur" ppEffectEnable true; 
"RadialBlur" ppEffectAdjust[0, 0, 0, 0];
"RadialBlur" ppEffectCommit 1;
"chromAberration" ppEffectEnable true;
		"chromAberration" ppEffectAdjust [0.01,0.2,true]; 
		"chromAberration" ppEffectCommit 1;
titleText ["", "BLACK", .1];
sleep .5;
titleFadeOut .5;

sleep 2;

"RadialBlur" ppEffectEnable true; 
"RadialBlur" ppEffectAdjust[5.01, 5.03, 1, 1.36];
"RadialBlur" ppEffectCommit 1;
"chromAberration" ppEffectEnable true;
		"chromAberration" ppEffectAdjust [0.11,0.2,true]; 
		"chromAberration" ppEffectCommit 1;
titleText ["", "BLACK", .1];
sleep .5;
titleFadeOut .5;

sleep 2;
"RadialBlur" ppEffectEnable true; 
"RadialBlur" ppEffectAdjust[0, 0, 0, 0];
"RadialBlur" ppEffectCommit 1;
"chromAberration" ppEffectEnable true;
		"chromAberration" ppEffectAdjust [0.0,0.0,true]; 
		"chromAberration" ppEffectCommit 1;
titleText ["", "BLACK", .1];
sleep .5;
titleFadeOut .5;

sleep 2;

"RadialBlur" ppEffectEnable true; 
"RadialBlur" ppEffectAdjust[5.01, 5.03, 1, 1.36];
"RadialBlur" ppEffectCommit 1;
sleep 2;
"RadialBlur" ppEffectEnable true; 
"RadialBlur" ppEffectAdjust[0, 0, 0, 0];
"RadialBlur" ppEffectCommit 1;
titleText ["", "BLACK", .1];
sleep .5;
titleFadeOut .5;





	sleep 5;
		
		"wetDistortion" ppEffectEnable true;
	"wetDistortion" ppEffectAdjust [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
	"wetDistortion" ppEffectCommit 3;
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectAdjust [0,0,true]; 
	"chromAberration" ppEffectCommit 3;	
"dynamicblur" ppEffectEnable true;
		"dynamicblur" ppEffectAdjust [0]; 
		"dynamicblur" ppEffectCommit 2;
waitUntil {ppEffectCommitted "RadialBlur"}; 
"RadialBlur" ppEffectEnable true; 
"RadialBlur" ppEffectAdjust[0.0, 0.0, 0, 0.0];
"RadialBlur" ppEffectCommit 3;


player setdamage 1; 
	
		};
		
	};

if (_item == "Painkiller") then 

	{
	player playmove "CtsPercMstpSnonWnonDnon_idle32podrbaniNanose";
	"RadialBlur" ppEffectEnable true; 
"RadialBlur" ppEffectAdjust[0.02,0.003, .05, 0.006];
"RadialBlur" ppEffectCommit 10;

	"colorInversion" ppEffectEnable true;
	"colorInversion" ppEffectAdjust [0.01, 0.01, 0.01];
	"colorInversion" ppEffectCommit 1;

	player groupchat "You took painkillers; your health will regenerate for four minutes.";
	execvm "Painkillers.sqf";
	sleep 240;

	};


if (_item == "heroin") then 

	{

	while {time < _endeZeit} do 

		{
	player playmove "CtsPercMstpSnonWnonDnon_idle32podrbaniNanose";
		_force = random 100;
		"chromAberration" ppEffectEnable true;
		"chromAberration" ppEffectAdjust [_force / 12, _force / 12, false];
		"chromAberration" ppEffectCommit (10.3 + random 10.1);
		waituntil {ppEffectCommitted "chromAberration"};
		sleep 0.2;
		"chromAberration" ppEffectAdjust [_force / -24,_force / -24, true];
		"chromAberration" ppEffectCommit (0.6 + random 0.2);
		waituntil {ppEffectCommitted "chromAberration"};
		sleep 0.2;
		"chromAberration" ppEffectAdjust [0,0, true];
		"chromAberration" ppEffectCommit (1.2 + random 0.4);

	"colorInversion" ppEffectEnable true;
	"colorInversion" ppEffectAdjust [1.5, 1, 1];
	"colorInversion" ppEffectCommit 1;
		
		sleep 1;	

	sleep 50;
		
		"wetDistortion" ppEffectEnable true;
	"wetDistortion" ppEffectAdjust [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
	"wetDistortion" ppEffectCommit 3;
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectAdjust [0,0,true]; 
	"chromAberration" ppEffectCommit 3;		
"colorInversion" ppEffectEnable true;
	"colorInversion" ppEffectAdjust [0,0, 0];
	"colorInversion" ppEffectCommit 3;
			
		};
		
	};
		
player groupChat localize "STRS_inv_item_druguse_ende";
INV_drogenusesperre = 0;
INV_DrogenCounter =  INV_DrogenCounter - _anzahl;
	
};

"colorInversion" ppEffectEnable false;
"wetDistortion" ppEffectEnable false;
"colorCorrections" ppEffectAdjust [1, 1, 0, [0.5,0.5,0.5,0], [0.5,0.5,0.5,0], [0.5,0.5,0.5,0]]; 
"colorCorrections" ppEffectCommit 10;
waitUntil {ppEffectCommitted "colorCorrections"}; 
"colorCorrections" ppEffectEnable false;
"chromAberration" ppEffectEnable false;

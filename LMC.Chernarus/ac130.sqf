//Original Script by c5{TKC}, edited by Stealthstick.

private ["_myPosNow","_mydir","_basePlaneo","_gun1","_gun2","_gun3","_gun4"];
_myPosNow = (getpos ac130spawn);
_mydir = getdir ac130spawn;

Sleep 5;

_basePlaneo = "C130J" createVehicle _myPosNow;
_basePlaneo allowdamage false;
_basePlaneo removeEventHandler ["hit"];
_basePlaneo removeEventHandler ["dammage"];
_basePlaneo removeEventHandler ["handledamage"];
_baseplaneo setdir _mydir;

_gun1 = "ZU23_CDF" createVehicle _myPosNow;
_gun2 = "AGS_CDF" createVehicle _myPosNow;
_gun3 = "TOW_TriPod" createVehicle _myPosNow;
_gun4 = "D30_CDF" createVehicle _myPosNow;

_gun1 attachTo [_basePlaneo,[-2.8,-2,-3.2]];_gun1 setvectordirandup [[0.5,0.5,0.707],[-5,0,6]];
_gun2 attachTo [_basePlaneo,[-2.5,2,-3.5]];_gun2 setvectordirandup  [[0,0,0],[-5,0,5]];
_gun3 attachTo [_basePlaneo,[-2.6,6,-3.5]];_gun3 setvectordirandup  [[0,0,0],[-5,0,3]];
_gun4 attachTo [_basePlaneo,[0,-9,-3.5]];
ang = 0;
ptc = .5;
dr = (direction _baseplaneo);
_gun4 setVectorDirAndUp [ [(sin(dr) * cos(ang)),(cos(dr) * cos(ang)),sin(ang)],[(cos(dr) * cos(ang) * sin(ptc)),(sin(dr) * cos(ang) * sin(ptc)),(cos(ang) * cos(ptc))]];

//Sleep 0.2;
_gun2 setDir 300;
_gun1 setDir 200;
_gun4 setDir 180;

_baseplaneo setvehicleinit "this removeAllEventHandlers 'handleDamage';
this addEventHandler ['handleDamage', { false }];	";
processInitCommands;
_gun1 setvehicleinit "this addeventhandler ['fired', {(_this select 0) setvehicleammo 1}];this removeAllEventHandlers 'handleDamage';
this addEventHandler ['handleDamage', { false }];	";
processInitCommands;
_gun2 setvehicleinit "this addeventhandler ['fired', {(_this select 0) setvehicleammo 1}];this removeAllEventHandlers 'handleDamage';
this addEventHandler ['handleDamage', { false }];	";
processInitCommands;
_gun3 setvehicleinit "this addeventhandler ['fired', {(_this select 0) setvehicleammo 1}];this removeAllEventHandlers 'handleDamage';
this addEventHandler ['handleDamage', { false }];	";
processInitCommands;
_gun4 setvehicleinit "this addeventhandler ['fired', {(_this select 0) setvehicleammo 1}];this removeAllEventHandlers 'handleDamage';
this addEventHandler ['handleDamage', { false }];	";
processInitCommands;

hint "AC130 Operational :)";
player groupchat "Don't let this AC130 get into the wrong hands.";
sleep 2;
player groupchat "Tip for takeoff: Put flaps all the way down, and pull up at 130kph";

[format ["%1 has purchased an AC130!", (name player)] ] call fn_netChat;
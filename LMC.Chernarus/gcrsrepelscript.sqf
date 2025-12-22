// GeneralCarver Repel Script
// Rappel Script
// Version: v1, 10/14/09
// Description: This script rappels the player from the chopper. First it checks the vehicle class of the player's helocopter to determine their decent position. Next it ejects the player and rapel's him. Finally, it checks if the player as AI subordinates and rapels them also.
// ======================================================================================
// Define inital variables
// ======================================================================================
_veh = vehicle player;
_vehclass = typeof vehicle player;
_xpos = getpos vehicle player select 0;
_ypos = getpos vehicle player select 1;
_zpos = getpos vehicle player select 2;
// ======================================================================================
// Rappel Player
// ======================================================================================
_initheight = getpos vehicle player select 2;
_initheightasl = getposasl vehicle player select 2;
_endingheight = _initheightasl - _initheight;
player action ["eject", vehicle player];
waitUntil {vehicle player iskindof "ParachuteBase"};
_parachute = vehicle player;
deletevehicle _parachute;
// Set position outside chopper on rope. Dependent on vehicle type.
if (_vehclass == "MH60S") then {player setpos [(getpos vehicle player select 0) - 1.25, (getpos vehicle player select 1) + 2, (getpos vehicle player select 2) - 4];};
if (_vehclass == "UH1Y") then {player setpos [(getpos vehicle player select 0) - 1.25, (getpos vehicle player select 1) - 3, (getpos vehicle player select 2) - 4];};
if (_vehclass == "MV22") then {player setpos [(getpos vehicle player select 0), (getpos vehicle player select 1) - 6, (getpos vehicle player select 2) - 4];};
if ((_vehclass == "Mi17_Civilian") || (_vehclass == "Mi17_Ins") || (_vehclass == "Mi17_CDF") || (_vehclass == "Mi17_RU") || (_vehclass == "Mi17_rockets_RU")) then {player setpos [(getpos vehicle player select 0) - 1.5, (getpos vehicle player select 1) + 5.5, (getpos vehicle player select 2) - 4];};
if ((_vehclass == "Mi24_D") || (_vehclass == "Mi24_P") || (_vehclass == "Mi24_V")) then {player setpos [(getpos vehicle player select 0) - 1, (getpos vehicle player select 1) + 4, (getpos vehicle player select 2) - 4];};
player switchmove "Crew";
_i = getpos player select 2;
waitUntil {_i = getpos player select 2; _i <= 5};
player setvelocity [0,0,0];
// Set player on surface. X and Y depend on vehicle class.
if (_vehclass == "MH60S") then {player setposasl [_xpos - 1.25, _ypos + 2, _endingheight];};
if (_vehclass == "UH1Y") then {player setposasl [_xpos - 1.25, _ypos - 3, _endingheight];};
if (_vehclass == "MV22") then {player setposasl [_xpos, _ypos - 6, _endingheight];};
if ((_vehclass == "Mi17_Civilian") || (_vehclass == "Mi17_Ins") || (_vehclass == "Mi17_CDF") || (_vehclass == "Mi17_RU") || (_vehclass == "Mi17_rockets_RU")) then {player setposasl [_xpos - 1.5, _ypos + 5.5, _endingheight];};
if ((_vehclass == "Mi24_D") || (_vehclass == "Mi24_P") || (_vehclass == "Mi24_V")) then {player setposasl [_xpos - 1, _ypos + 4, _endingheight];};
player switchmove "Stand";

// experimental section removed after lmc-v3.37

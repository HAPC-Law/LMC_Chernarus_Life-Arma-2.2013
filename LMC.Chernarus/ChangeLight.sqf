/*
Advanced House Light Script
Version 1.00
Made by Rockhount
*/
_Center = _this select 0;
_Lightbulb = _this select 1;
_Flicker = if (count _this > 2) then {_this select 2} else {0};
_Brightness = if (count _this > 3) then {_this select 3} else {.02};
_Radius = if (count _this > 4) then {_this select 4} else {250};
_Random = if (count _this > 5) then {_this select 5} else {20};
if (_Random < 1) then
{
	_Random = 1;
};
_Time = 5;
_Random2 = random (100 / _Random);

while 
{
	if (typename _Center == typename "") then 
	{
		(getMarkerpos _Center) distance _Lightbulb <= _Radius;
	}
	else
	{
		_Center distance _Lightbulb <= _Radius;
	};
} 
do
{
	if ((_Random2 <= 1) && (_Flicker > 0)) then
	{
		_Random = random (_Brightness / 6);
		_Time = random _Flicker;
		_Lightbulb setLightBrightness ((_Brightness - (_Brightness / 6)) + _Random);
	};
	sleep _Time;
};
deleteVehicle _Lightbulb;
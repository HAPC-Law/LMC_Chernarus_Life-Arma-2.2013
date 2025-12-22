player groupchat "House Lights Initialized...";

/*
Advanced House Light Script
Version 1.00
Made by Rockhount
Original by TPW
example: nul=[Player,5,250,.02,[1,.5,.1],-160,-1,50,.1,20] exexVM "HouseLights.sqf";
*/
_Center = if (count _this > 0) then {_this select 0} else {Player};
_Time = if (count _this > 1) then {_this select 1} else {5};
_Radius = if (count _this > 2) then {_this select 2} else {250};
_Brightness = if (count _this > 3) then {_this select 3} else {.02};
_Color = if (count _this > 4) then {_this select 4} else {[1,.5,.1]};
_mAngle = if (count _this > 5) then {_this select 5} else {-180};
_xAngle = if (count _this > 6) then {_this select 6} else {-10};
_Random = if (count _this > 7) then {_this select 7} else {100};
_Flicker = if (count _this > 8) then {_this select 8} else {.1};
_RandomFlicker = if (count _this > 9) then {_this select 9} else {20};
_oldhouses = [];
_Pos = [.1,.1,.1];

if ((!isServer && isMultiplayer) or (isServer && !isDedicated)) then
{
	while
	{
		if (typename _Center == typename "") then
		{
			(getMarkerpos _Center) select 0 != 0;
		}
		else
		{
			alive _Center;
		};
	}
	do
	{
		_Lat = -1 * getNumber(configFile >> "CfgWorlds" >> worldName >> "latitude");
		_Day = 360 * (dateToNumber date);
		_Hour = (daytime / 24) * 360;
		_SunAngle = ((12 * cos(_day) - 78) * cos(_lat) * cos(_hour)) - (24 * sin(_lat) * cos(_day));
		if ((_SunAngle >= _mAngle) && (_SunAngle <= _xAngle)) then
		{
			if (typename _Center == typename "") then
			{
				_Pos = getMarkerpos _Center;
			}
			else
			{
				_Pos = getPos _Center;
			};
			_houses = nearestObjects [_Pos, ["House"], _Radius];
			for [{_i = 0},{_i < count _houses},{_i = _i + 1}] do
			{
				_Ramdon2 = random (100 / _Random);
				if ((_Ramdon2 <= 1) && (((_houses select _i) buildingPos 2) select 0 != 0) && !(_houses select _i in _oldhouses)) then
				{
					_lightbulb = "#lightpoint" createVehicleLocal [(((_houses select _i) buildingPos (round(random 5))) select 0),(((_houses select _i) buildingPos (round(random 5))) select 1),(((_houses select _i) buildingPos (round(random 5))) select 2) + (random 1) - (random .9)];
					_lightbulb setLightBrightness _Brightness;
					_lightbulb setLightColor _Color;
					if (_Flicker > 0) then
					{
						[_Center,_lightbulb,_Flicker,_Brightness,_Radius,_RandomFlicker] execVM "ChangeLight.sqf";
					}
					else
					{
						[_Center,_lightbulb] execVM "ChangeLight.sqf";
					};
				};
				if ((_Ramdon2 <= 1) && (((_houses select _i) buildingPos 0) select 0 == 0)) then
				{
					for [{_i2 = 0},{_i2 < round (random 2)},{_i2 = _i2 + 1}] do
					{
						(_houses select _i) animate [format ["Lights_%1",_i2],1];
					};
				};
			};
			_oldhouses = _houses;
			sleep _Time;
		}
		else
		{
			sleep 30;
		};
	};
};
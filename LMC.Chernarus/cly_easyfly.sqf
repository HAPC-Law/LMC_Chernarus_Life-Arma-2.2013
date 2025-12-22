//EasyFly script for Armed Assault by Celery, SQF conversion by i0n0s, tweaked by rocko
//ARMA 2 script version by Celery
//
//Tweaks airplane movement vector to match its direction vector, making flying easier.
//Basic principle: average of direction vector plus movement vector times inertia value.
//The effect smoothly diminishes when it gets nearer to the stall speed which is 65% of
//landingSpeed in the plane's config.
//Smaller _inertia value means more absolute steering.
//
//Can be disabled serverside with CLY_easyfly_script_disabled=true
////////////////////////////////////////////////////////////////////////////////////////

CLY_easyfly_script=true;
sleep 1;

if (isNil "CLY_easyfly_script_disabled") then {CLY_easyfly_script_disabled=false};
private ["_fullspeed","_stallspeed","_speedrange","_inertiaxy","_inertiaz"];

while {true} do
	{
		if (vehicle player isKindOf "Plane" and alive player) then
		{
			_fullspeed=getNumber (configFile/"CfgVehicles"/(typeOf vehicle player)/"landingSpeed")*1;
			_stallspeed=getNumber (configFile/"CfgVehicles"/(typeOf vehicle player)/"landingSpeed")*0.65;
			_speedrange=_fullspeed-_stallspeed;
			while {(player==driver vehicle player) and (damage vehicle player<1)} do
			{
				sleep 0.04;
				if (speed vehicle player<=_fullspeed and speed vehicle player>_stallspeed) then
				{
					_inertiaxy=7/((speed vehicle player-_stallspeed)/_speedrange);
					_inertiaz=4/((speed vehicle player-_stallspeed)/_speedrange)
				}
				else
				{
					_inertiaxy=7;
					_inertiaz=4
				};
				if (speed vehicle player>_fullspeed) then
				{
					_inertiaxy=7;
					_inertiaz=4
				};
				if ((speed vehicle player>_stallspeed) and !(CLY_easyfly_script_disabled) and (getNumber (configFile/"CfgVehicles"/(typeOf vehicle player)/"vtol")<3)) then
				{
					vehicle player setVelocity [
					(((vectorDir vehicle player select 0)*((speed vehicle player)/3.6))+((velocity vehicle player select 0)*_inertiaxy))/(_inertiaxy+1),
					(((vectorDir vehicle player select 1)*((speed vehicle player)/3.6))+((velocity vehicle player select 1)*_inertiaxy))/(_inertiaxy+1),
					(((vectorDir vehicle player select 2)*((speed vehicle player)/3.6))+((velocity vehicle player select 2)*_inertiaz))/(_inertiaz+1)
					];
				};
			};
		};
	};
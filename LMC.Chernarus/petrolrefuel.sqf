_fuel = fuel (vehicle player);
_fuelstartposition = getpos(vehicle player);
_exitvar = 0;

if (_fuel >= 0.99) exitWith 

{

player groupChat localize "STRS_gasstation_bereits_getankt";

};

while {((fuel (vehicle player)) < 0.99)} do 

{

player removeaction action_tankstelle;

if(TankenCost < maxpetroluse)then{TankenCost = TankenCost + petroluse};

_tankvehicle = vehicle player;	

if (not(['moneyHackerFuckOff', -(TankenCost)] call INV_AddInventoryItem)) exitWith 

	{

	player groupChat localize "STRS_gasstation_tanken_money";    
	_exitvar = 1;

	};

if (_tankvehicle == player) exitWith 

	{

	player groupChat localize "STRS_gasstation_tanken_vclleft";  
	_exitvar = 1;

	};

if (vehicle player distance _fuelstartposition > 5) exitWith 

	{

	
	_exitvar = 1;
	_randomchance = (random 100);
	if(_randomchance > 50) then {"R_PG7V_AT" createvehicle getpos (vehicle player); player groupchat "You drove off while refueling causing a chemical combustion!"; } else 
{player groupChat "Woah, that was close! Don't drive off, or else your vehicle could explode!"; };

	};

_tankvehicle setFuel ((fuel _tankvehicle)+0.1);
titleText [ format[localize "STRS_gasstation_tanken_zwischenmsg",round(fuel _tankvehicle * 100)], "PLAIN DOWN"];

sleep 1;

};

publicvariable "tankencost";

if (_exitvar == 1) exitWith {};

player groupChat localize "STRS_gasstation_tanken_finished";
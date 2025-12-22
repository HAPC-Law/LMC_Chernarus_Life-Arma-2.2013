if(vehicle player iskindof "Ship")exitwith{player groupChat "For land vehicles only"};
if(vehicle player iskindof "Air")exitwith{player groupChat "For land vehicles only"};
if (('moneyHackerFuckOff' call INV_GetItemAmount) < 250) exitWith {player groupChat "You need $250"};
['moneyHackerFuckOff', -250] call INV_addinventoryitem;

_pos = [(position (vehicle player) select 0) - (sin(getdir (vehicle player))*2), (position (vehicle player) select 1) - (cos(getdir (vehicle player))*2), -0.4];
_spikestrip = "Land_RedWhiteBarrier" createvehicle [0, 0, 0];
_spikestrip setdir ((getdir (vehicle player)) + 180);
_spikestrip setpos _pos;
_spikestrip setDammage 0;
call compile format['_spikestrip setvehicleinit "this setvehiclevarname ""%1%2""; %1%2 = this"; processinitcommands', player, _class];
[_spikestrip, "spikestrip"] call fn_netSay3D;

(format ["if (local server) then {publicarbeiterarctionarray = publicarbeiterarctionarray + [ [%1%2, %1] ];};", player, _class]) call broadcast;
player groupChat "Spikestrip deployed ($250)";

sleep 120;

deletevehicle _spikestrip;

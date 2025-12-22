_art = _this select 0;

if (_art == "use") then 
 
{

_vcl  = vehicle player;
   
if (player == _vcl) exitWith {player groupChat localize "STRS_inv_items_repair_refuel_notincar";};
if (player != driver _vcl) exitWith {player groupChat "Only the driver can replace the tires.";};
if (vehicle player iskindof "motorcycle") exitwith {player groupchat "You can't replace bike tires.";};


["sparetires", -1] call INV_AddInventoryItem;
player groupchat "Replacing Tires!";
_vcl engineon false;
nul = [(_vcl),"tirechange"] call fn_netSay3D;
sleep 2.206;
nul = [_vcl,"wheel_1_1_steering",1] call fn_netSetHit;
sleep 3.85;
	nul = [_vcl,"wheel_1_2_steering",1] call fn_netSetHit;
	sleep 1.4;
	nul = [_vcl,"wheel_2_1_steering",1] call fn_netSetHit;
	sleep 2.9;
	nul = [_vcl,"wheel_2_2_steering",1] call fn_netSetHit;
sleep 1;
nul = [_vcl,"wheel_1_1_steering",0] call fn_netSetHit;
	nul = [_vcl,"wheel_1_2_steering",0] call fn_netSetHit;
	nul = [_vcl,"wheel_2_1_steering",0] call fn_netSetHit;
	nul = [_vcl,"wheel_2_2_steering",0] call fn_netSetHit;
player groupChat "Tires Replaced!";


};




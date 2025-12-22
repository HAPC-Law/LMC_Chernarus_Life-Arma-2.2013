_art = _this select 0;

if (_art == "use") then 
 
{

_item = _this select 1;
_vcl  = vehicle player;
   
if (player == _vcl) exitWith {player groupChat localize "STRS_inv_items_repair_refuel_notincar";};
if (player != driver _vcl) exitWith {player groupChat localize "STRS_inv_items_repair_refuel_notdriver";};
if ((damage _vcl) == 0) exitWith {player groupChat localize "STRS_inv_items_repair_notneeded";};

[_item, -1] call INV_AddInventoryItem;
player groupchat "Repairing vehicle!";
sleep 10;
_vcl setHit ["motor", 0];
_vcl setHit ["podvozek", 0];
_vcl setHit ["korba", 0];
_vcl setHit ["klun", 0];
_vcl setHit ["auto", 0];
_vcl setHit ["l svetlo", 0];
_vcl setHit ["p svetlo", 0];
_vcl setHit ["glass4", 0];
_vcl setHit ["glass2", 0];
_vcl setHit ["glass3", 0];
_vcl setHit ["glass1", 0];
_vcl setHit ["karoserie", 0];
_vcl setHit ["palivo", 0];

if(_vcl iskindof "motorcycle") then {_vcl setdamage 0};


player groupChat "Vehicle repaired";


};




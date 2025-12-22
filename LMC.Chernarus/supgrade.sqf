_art 	= _this select 0;
_item 	= _this select 1;
_vcl	= vehicle player;
_type	= typeof _vcl;
_UID = getPlayerUID player;

if(_art == "use")then
{
    if(_vcl == player)exitwith{player groupchat "you must be in a vehicle"};
    if(_vcl iskindof "ship" and (_item == "supgrade3" or _item == "supgrade4" or _item == "supgrade5" or _item == "supgrade6" or _item == "supgrade7" or _item == "supgrade10" or _item == "supgrade20" or _item == "supgrade40" or _item == "supgrade50"))exitwith{player groupchat "You can only tune boats with speed upgrades 1 or 2!"};
    if(_vcl iskindof "armored" and (_item == "supgrade3" or _item == "supgrade4" or _item == "supgrade5" or _item == "supgrade6" or _item == "supgrade7" or _item == "supgrade10" or _item == "supgrade20" or _item == "supgrade40" or _item == "supgrade50"))exitwith{player groupchat "You can only tune boats with speed upgrades 1 or 2!"};
    [_item, -1] call INV_AddInventoryItem;
    if(_item == "supgrade1")then{player groupchat "Tuning vehicle..."; _vcl setfuel 0; sleep 4; _vcl setfuel 1; _vcl setvariable ["tuning", 1, true]; player groupchat "Vehicle successfully tuned!";};
    if(_item == "supgrade2")then{player groupchat "Tuning vehicle..."; _vcl setfuel 0; sleep 4; _vcl setfuel 1; _vcl setvariable ["tuning", 2, true]; player groupchat "Vehicle successfully tuned!";};
    if(_item == "supgrade3")then{player groupchat "Tuning vehicle..."; _vcl setfuel 0; sleep 4; _vcl setfuel 1; _vcl setvariable ["tuning", 3, true]; player groupchat "Vehicle successfully tuned!";};
    if(_item == "supgrade4")then{player groupchat "Tuning vehicle..."; _vcl setfuel 0; sleep 4; _vcl setfuel 1; _vcl setvariable ["tuning", 4, true]; player groupchat "Vehicle successfully tuned!";};
    if(_item == "supgrade5")then{player groupchat "Tuning vehicle..."; _vcl setfuel 0; sleep 4; _vcl setfuel 1; _vcl setvariable ["tuning", 5, true]; player groupchat "Vehicle successfully tuned!";};
    if(_item == "supgrade10")then{player groupchat "Tuning vehicle..."; _vcl setfuel 0; sleep 0.1; _vcl setfuel 1; _vcl setvariable ["tuning", 10, true]; player groupchat "Vehicle successfully tuned! Enjoy your speed upgrade valued donator.";};
    if(_item == "supgrade20")then{player groupchat "Tuning vehicle..."; _vcl setfuel 0; sleep 0.1; _vcl setfuel 1; _vcl setvariable ["tuning", 20, true]; if (_UID in Admin) then {player groupchat "Vehicle successfully tuned! Enjoy your speed upgrade fellow admin."} else {player groupchat "Vehicle successfully tuned! Enjoy your speed upgrade valued donator.";};};
    if(_item == "supgrade40")then{player groupchat "Tuning vehicle..."; _vcl setfuel 0; sleep 0.1; _vcl setfuel 1; _vcl setvariable ["tuning", 40, true]; player groupchat "Vehicle successfully tuned! Enjoy your speed upgrade fellow admin.";};
    if(_item == "supgrade50")then{player groupchat "Tuning vehicle..."; _vcl setfuel 0; sleep 0.1; _vcl setfuel 1; _vcl setvariable ["tuning", 50, true]; player groupchat "Vehicle successfully tuned! Enjoy your speed upgrade. -- Watch out for the trees!";};
    if(_item == "supgrade100")then{player groupchat "Tuning vehicle..."; _vcl setfuel 0; sleep 0.1; _vcl setfuel 1; _vcl setvariable ["tuning", 100, true]; player groupchat "Vehicle successfully tuned! Enjoy your speed upgrade. -- This shit is lethal btw!";};
};
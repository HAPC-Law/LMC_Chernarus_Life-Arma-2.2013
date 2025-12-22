if (!("mechanic" call INV_HasLicense)) exitWith {player groupChat "You no longer have this job. This option still remains until you respawn but you cannot use it."};
if (('moneyHackerFuckOff' call INV_GetItemAmount) < 40) exitWith {player groupChat "Not enough money.";};
['moneyHackerFuckOff', -40] call INV_addinventoryitem;

player playmove "AinvPknlMstpSlayWrflDnon_medic";
waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};
['reparaturkit',1] call INV_AddInventoryItem;
player groupChat "Repairkit made. Press 2 to check inventory.";
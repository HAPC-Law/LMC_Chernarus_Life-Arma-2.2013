_targ = cursortarget;
_dist = player distance _targ;
_FuckOffMoneyHackers = 'moneyHackerFuckOff' call INV_GetItemAmount;




if(_dist > 20 && _FuckOffMoneyHackers >= 2500) then {hint "Structure is too far away! You must be within 20 meters of it.";};



if(_dist < 20 && _FuckOffMoneyHackers >= 2500) then
   {
       
       ['moneyHackerFuckOff', -2500] call INV_AddInventoryItem;
       player playmove "AinvPknlMstpSlayWrflDnon_medic";
       _cone = "Land_coneLight" createvehicle (getpos player);
       _cone2 = "Land_coneLight" createvehicle (getpos player);
       _cone3 = "Land_coneLight" createvehicle (getpos player);
       sleep 7;
       deletevehicle _cone;
       deletevehicle _cone2;
       deletevehicle _cone3;
       _targ setdamage 0;
       hint "Structure Repaired!";

       
   };

if(_dist > 20 && _FuckOffMoneyHackers <= 2500) then 
{

	hint "Not enough money.";
};

if(_dist < 20 && _FuckOffMoneyHackers <= 2500) then 
{

	hint "Not enough money.";
};





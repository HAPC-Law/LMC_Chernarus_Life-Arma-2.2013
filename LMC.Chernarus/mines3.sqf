if(pickmine3 == 1) exitwith {player groupchat "please take you time, mines are dangerous"};
pickmine3 = 1;

if (player in coparray) then 
{
["Landmine",1] call INV_AddInventoryItem;
hint "You have disabled a IED! Take it to the disposal unit!";
mine3 hideObject true;
sleep 50;
mine3 hideObject false;
};
sleep 3;
pickmine3 = 0;
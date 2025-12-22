if(pickmine2 == 1) exitwith {player groupchat "please take you time, mines are dangerous"};
pickmine2 = 1;

if (player in coparray) then 
{
["Landmine",1] call INV_AddInventoryItem;
hint "You have disabled a IED! Take it to the disposal unit!";
mine2 hideObject true;
sleep 50;
mine2 hideObject false;
};
sleep 3;
pickmine2 = 0;
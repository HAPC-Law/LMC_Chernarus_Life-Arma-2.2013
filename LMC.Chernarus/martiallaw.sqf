_FuckOffMoneyHackers = 'moneyHackerFuckOff' call INV_GetItemAmount;


if(_FuckOffMoneyHackers >= 100000) then
{

nul = [format ["%1 declared Martial Law.", (name player)] ] call fn_netChat;
nul = ["martime.sqf"] call fn_netExecVM;
nul = ["martialmsg.sqf"] call fn_netExecVM;
['moneyHackerFuckOff', -100000] call INV_AddInventoryItem;



}

else
{
player groupchat "You need $100k to declare martial law.";
};


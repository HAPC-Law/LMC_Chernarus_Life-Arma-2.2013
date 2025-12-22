if (RamDec == 1) exitwith {player groupchat "Someone has already prayed to Allah!"};
RamDec = 1;
_FuckOffMoneyHackers = 'moneyHackerFuckOff' call INV_GetItemAmount;

if(_FuckOffMoneyHackers >= 50000) then
{

nul = [format ["%1 prays to Allah for Ramadan.", (name player)] ] call fn_netChat;

nul = ["declaretimer.sqf"] call fn_netExecVM;
nul = ["declaremsg.sqf"] call fn_netExecVM;

['moneyHackerFuckOff', -50000] call INV_AddInventoryItem;

}

else
{
player groupchat "Allah demands you donate $50k in order to pray!";
};


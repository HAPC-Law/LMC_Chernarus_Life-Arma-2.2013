if (hasstd) exitwith {hint "You currently have an STD!\nHow about taking care of this before coming back for more?";};
if (anticoffeespam == 1) exitwith {player groupchat "Easy cowboy, your gonna wear it out!"};
anticoffeespam = 1;
_FuckOffMoneyHackers = 'moneyHackerFuckOff' call INV_GetItemAmount;
if (_FuckOffMoneyHackers >= 5) then
{
    ['moneyHackerFuckOff', -5] call INV_AddInventoryItem;
    [] execVM "coffeeThread.sqf";
}
else
{
    hint "Christian's Wife demands 5 dollars before having coffee with you!";
    anticoffeespam = 0;
};

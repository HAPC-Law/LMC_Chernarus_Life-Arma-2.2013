private ["_FuckOffMoneyHackers"];
_FuckOffMoneyHackers = 'moneyHackerFuckOff' call INV_GetItemAmount;

if(_FuckOffMoneyHackers >= 5000000 and ("TV" call INV_HasLicense)) then
{
    ['moneyHackerFuckOff', -5000000] call INV_AddInventoryItem;
    execvm "Ac130.sqf";
    player groupchat "You have bought an AC130 for $5M. Check the end of the airfield.";
}
else
{
    hint "You need $5M and a donor license to buy an AC130.";
};
_airber = getmarkerpos "heliteleber";
_FuckOffMoneyHackers = 'moneyHackerFuckOff' call INV_GetItemAmount;
if(_FuckOffMoneyHackers >= 300) then
{
    ['moneyHackerFuckOff', -300] call INV_AddInventoryItem;
    titleText ["Flying to Kamyshovo", "BLACK", 1];
    sleep 5;
    player setpos (_airber);
    titleFadeOut 5;
    player groupchat "Welcome to Kamyshovo! You paid $300.";
}
else
{
    hint "You need $300 to fly.";
};
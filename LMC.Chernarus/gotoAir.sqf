_airbalota = getmarkerpos "helitelecherno";
_FuckOffMoneyHackers = 'moneyHackerFuckOff' call INV_GetItemAmount;
if(_FuckOffMoneyHackers >= 300) then
{
    ['moneyHackerFuckOff', -300] call INV_AddInventoryItem;
    titleText ["Flying to Chernogorsk", "BLACK", 1];
    sleep 5;
    player setpos (_airbalota);
    titleFadeOut 5;
    player groupchat "Welcome to Chernogorsk! You paid $300.";
}
else
{
    hint "You need $300 to fly.";
};
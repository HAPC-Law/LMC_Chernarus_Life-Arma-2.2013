_FuckOffMoneyHackers = 'moneyHackerFuckOff' call INV_getitemamount;
if (_FuckOffMoneyHackers < Hospitalx2) exitwith {player groupchat "not enough money"};
if (_FuckOffMoneyHackers >= Hospitalx2) exitwith
{
    ['moneyHackerFuckOff', -Hospitalx2] call INV_addinventoryitem;
    player groupchat "Ready! Good luck!";
    player setdammage 0;
};
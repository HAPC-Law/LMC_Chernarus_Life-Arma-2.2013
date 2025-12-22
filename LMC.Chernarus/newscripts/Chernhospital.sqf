_FuckOffMoneyHackers = 'moneyHackerFuckOff' call INV_getitemamount;
if(_FuckOffMoneyHackers< Hospital)exitwith{player groupchat "not enough money"};
if(_FuckOffMoneyHackers >= Hospital)exitwith{

['moneyHackerFuckOff', -Hospital] call INV_addinventoryitem;

player groupchat "Ready! Good luck!";
player setdammage 0;

};
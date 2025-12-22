_FuckOffMoneyHackers = 'moneyHackerFuckOff' call INV_getitemamount;
if(_FuckOffMoneyHackers< CivSkin)exitwith{player groupchat "not enough money"};
if(_FuckOffMoneyHackers >= CivSkin)exitwith{

['moneyHackerFuckOff', -CivSkin] call INV_addinventoryitem;

player groupchat "wait, please";

["ru_citizen4"] execVM "changeclass.sqf";

};
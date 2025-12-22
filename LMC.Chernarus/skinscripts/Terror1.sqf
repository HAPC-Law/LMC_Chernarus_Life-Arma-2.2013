_FuckOffMoneyHackers = 'moneyHackerFuckOff' call INV_getitemamount;
if(_FuckOffMoneyHackers< SkinTerr)exitwith{player groupchat "not enough money"};
if(_FuckOffMoneyHackers >= SkinTerr)exitwith{

['moneyHackerFuckOff', -SkinTerr] call INV_addinventoryitem;

player groupchat "wait, please";

["GUE_Soldier_1"] execVM "changeclass.sqf";

};
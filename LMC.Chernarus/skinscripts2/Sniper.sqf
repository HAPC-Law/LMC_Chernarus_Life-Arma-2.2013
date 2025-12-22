_FuckOffMoneyHackers = 'moneyHackerFuckOff' call INV_getitemamount;
if(_FuckOffMoneyHackers< SkinTerrB)exitwith{player groupchat "not enough money"};
if(_FuckOffMoneyHackers >= SkinTerrB)exitwith{

['moneyHackerFuckOff', -SkinTerrB] call INV_addinventoryitem;

player groupchat "wait, please";

["RU_Soldier_sniper"] execVM "changeclass.sqf";

};


_FuckOffMoneyHackers = 'moneyHackerFuckOff' call INV_GetItemAmount;

if (_FuckOffMoneyHackers < 30000) exitWith {role groupChat "Not Enough Money"};

['moneyHackerFuckOff', -(30000)] call INV_AddInventoryItem;

_backup = "ru_policeman" createUnit [position player, group player];
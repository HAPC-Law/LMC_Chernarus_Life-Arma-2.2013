_act = _this select 0;
_STD = _this select 1;
_FuckOffMoneyHackers = 'moneyHackerFuckOff' call INV_getitemamount;
_sl = 0;
_killCounter10sec = (round (random 4)) + 8;
_killCounter5min = (round (random 4)) + 298;
stdkilling = true;
hasstd = true;

if (_act == "kill") then
{
    hint format ["You have contracted %1, you have about 10 seconds to live!", _STD];
    player groupchat format ["You have contracted %1, you have about 10 seconds to live!", _STD];
    sleep _killCounter10sec;
    [format ["%1 has died from %2!", (name player), _STD]] call fn_netHint;
    anticoffeespam = 0;
    hasstd = false;
    player setdamage 1;
};

if (_act == "dying") then
{
    hint format ["You have contracted %1, you have about 5 minutes to live!", _STD];
    player groupchat format ["You have contracted %1, you have about 5 minutes to live!", _STD];
    while {stdkilling} do
    {
        if (!stdkilling) exitwith {};
        if (_sl < _killCounter5min) then {_sl = _sl + 1; sleep 1;};
        if (_sl == 60) then {hint "The parasites are eating you from within!\nYou now have about 4 minutes left!\n\nHow about finding that cure!";};
        if (_sl == 120) then {hint "The disease is killing you!\nYou have about 3 minutes left!\n\nYou need to find a cure!";};
        if (_sl == 180) then {hint "The critical stages of sickness are starting to set in!\nYou have about 2 minutes left!\n\nYou're going to lose!";};
        if (_sl == 240) then {hint "You have about 1 minute left!\n\nIt doesn't appear that you are going to make it!";};
        if (_sl == _killCounter5min) then
        {
            stdkilling = false;
            player setdamage 1;
            [format ["%1 has died from %2!", (name player), _STD]] call fn_netHint;
            anticoffeespam = 0;
            hasstd = false;
        };
    };
};

if (_act == "cured") then
{
    _FuckOffMoneyHackers = 'moneyHackerFuckOff' call INV_getitemamount;
    if (_FuckOffMoneyHackers < cureprice) exitwith {player groupchat "not enough money"};
    if (_FuckOffMoneyHackers >= cureprice) then
    {
        ['moneyHackerFuckOff', -cureprice] call INV_addinventoryitem;
        player groupchat "You have recieved treatment!";
        hint "You have recieved treatment!\nGood luck!";
    };
    stdkilling = false;
    hasstd = false;
    hint "You have been cured!\nMaybe stay away from unclean women?!";
    anticoffeespam = 0;
};

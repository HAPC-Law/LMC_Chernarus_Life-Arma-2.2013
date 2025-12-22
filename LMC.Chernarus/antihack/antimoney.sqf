private ["_FuckOffMoneyHackers","_UID","_PUID","_oldbankmoney","_newbankmoney","_difference","_final"];
sleep 5;
while {true} do
{
    _FuckOffMoneyHackers = 'moneyHackerFuckOff' call INV_GetItemAmount;
    _UID = getPlayerUID player;
    _PUID = format["%1", _UID];
    if(!(ctrlVisible 1003) and atmscriptrunning != 1) then
    {
        _oldbankmoney = leavemybankmoneyalone;
        sleep 1;
        _newbankmoney = leavemybankmoneyalone;
        _difference = _newbankmoney - _oldbankmoney;
        _final = abs(_difference);
        if((_final > 2000000 and !(ctrlVisible 1003) and atmscriptrunning != 1)
        || leavemybankmoneyalone > 25000000
        || money_limitonbank != 20000000
        || bank_limitonbank != 250000000
        || base_civmoney != 200
        || base_copmoney != 1000
        || base_workplace != 5000
        || base_gangincome != 5000
        || base_gangcreatecost != 5000
        || base_squadincome != 5000
        || base_squadcreatecost != 5000
        || _FuckOffMoneyHackers > 10000000) then
        {
            ['moneyHackerFuckOff', -(_FuckOffMoneyHackers)] call INV_AddInventoryItem;
            leavemybankmoneyalone = 0;
            bank_limitonbank = 250000000;
            money_limitonbank = 20000000;
            [format["Stealthstick's antihack: (%1) is money-hacking!",(name player)]] call fn_netHint;
            [format["Stealthstick's antihack: (%1) is money-hacking!",(name player)]] call fn_netChat;
            PName = (name player);
            PID = _UID;
            publicVariable "PName";
            publicVariable "PID";
            server setVehicleInit 'if (isServer) then {diag_log format["Antihack Server Log - Name: (%1) ID: (%2) was flagged for money-hacking!", PName,PID];};';
            processInitCommands;
            clearVehicleInit server;
            execvm "antihack\punish.sqf";
            player setvariable ["lockme", 1];
            execvm "antihack\lockloop.sqf";
            isHacker = isHacker + [_PUID];
            publicVariable "isHacker";
        };
    };
};
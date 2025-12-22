haxorname = name player;
publicVariable "haxorname";
if (leavemybankmoneyalone >= 50000) then
{
    leavemybankmoneyalone = leavemybankmoneyalone - 50000;
    player groupChat "Dont be greedy! Limit is 50,000 for level 2";
    disableUserInput true;
    titleCut ["", "BLACK",0];
    server globalChat "Admin: player is too greedy and is now in jail.";
    format['server globalChat "Admin: %1 is too greedy and is now in jail.";', haxorname] call broadcast;
    format['server globalChat "Admin: %1 is too greedy and is now in jail.";', haxorname] call broadcast;
    format['server globalChat "Admin: %1 is too greedy and is now in jail.";', haxorname] call broadcast;
    format['server globalChat "Admin: %1 is too greedy and is now in jail.";', haxorname] call broadcast;
    format['server globalChat "Admin: %1 is too greedy and is now in jail.";', haxorname] call broadcast;
    format['server globalChat "Admin: %1 has been disabled. follow donator rules.";', haxorname] call broadcast;
    player setpos (getpos CopPrison);
    player groupchat "We dont like greedy people assistance denied!";
    format['serverCommand "#exec kick %1";', haxorname];
}
else
{
    _UID = getPlayerUID player;
    if (_UID in Don2 || _UID in Don3) then
    {
	["moneyHackerFuckOff",5000] call INV_AddInventoryItem;
	hint "5000 Dollars for donators only - limit 50,000, level 3 lets your start with 5 Million";
    }
    else
    {
	server globalchat format["Requires Donator level 2 access, talk to a LMC admin or see our forums"];
    };
};
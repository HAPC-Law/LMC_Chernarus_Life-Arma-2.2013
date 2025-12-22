// some generic hack detector
// by Darky
_hackdetect = false;
_glClassesNames = ["carpetbomb_menu","playerhijack_menu","zargabad_menu","joker_menu","endgame_menu","AlexAdmin_menu","Alexander_menu","ChernoRape_menu","MightyGerk_menu","SpawnSoldier_menu","AtackPlanes","GrkTeleport","crpbmb_menu","Delete_menu","Verbal_menu","playerhijack_menu","ttt5","dayz"];
while {true} do
{
    //Class Scanner
    for "_i" from 0 to ((count _glClassesNames) - 1) do
    {
        _curClassName = (_glClassesNames select _i);
        if (isClass (configFile >> _curClassName)) then
        {
            _hackdetect = true;
            if (_hackdetect == true) then
            {
                format['server globalChat "Admin: %1 has been detected injecting scripts. Ban this player now.";', (name player)] call broadcast;
                execvm "antihack\punish.sqf";
                player setvariable ["lockme", 1];
                execvm "antihack\lockloop.sqf";
                {_x setDamage 0;} foreach (nearestobjects [getpos player, [], 25000]);
                _hackdetect = false;
            };
        };
    };

    if (_hackdetect == false) then
    {
	hint "ok";
	sleep 10;
    };
};

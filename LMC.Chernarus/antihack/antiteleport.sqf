//Original by Razgriz and GGhost
private ["_oldPos","_newPos","_sbdistance","_cpdistance","_cbdistance","_hbbte1","_hbbte2","_tpdistance"];
while {true} do
{
    while {alive player} do
    {
        _oldPos = (getpos player);
        sleep 1;
        _newPos = (getpos player);
        _sbdistance = _newPos distance swattele;
        _cpdistance = _newPos distance CopPrison;
        _cbdistance = _newPos distance policebase;
        _hbbte1 = _newpos distance headbugtele;
        _hbbte2 = _oldpos distance headbugtele;
        _tpdistance = _newPos distance _oldPos;
        if  ((_sbdistance > 100) && (_cpdistance > 100) && (_cbdistance > 100) && (_hbbte1 > 100) && (_hbbte2 > 100)) then
        {
            if  (_tpdistance > 1000) then
            {
                format['player globalChat "Admin: %1 is teleporting.";', (name player)] call broadcast;
                execvm "antihack\punish.sqf";
                player setvariable ["lockme", 1];
                execvm "antihack\lockloop.sqf";
            };
        };
    };
};

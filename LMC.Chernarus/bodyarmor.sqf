private ["_bodyarmor","_enabled"];
_enabled = player getvariable "_enabled";
_bodyarmor = player getvariable "_bodyarmor";



if(_enabled == 1) then
{
    if(vehicle player == player) then 
    {
        nul = [(vehicle player),"thud"] call fn_netSay3D;
        player allowdamage false;
        player sethit['legs',0];
        player sethit['body',0];
        player setdamage (damage player) -.5;
        _bodyarmor = _bodyarmor - 1;
		bodypt = _bodyarmor;
        player setvariable ["_bodyarmor",_bodyarmor];
        //hintsilent format['Bodyarmor hitpoints remaining: %1', _bodyarmor];
        sleep 2;
        player allowdamage true;
    };
    if(_bodyarmor < 1) then
    {
        player groupchat "Your bodyarmor is of no use now.";
        hint "Your bodyarmor is of no use now";
        player setvariable ["_bodyarmor",0];
        player setvariable ["_enabled",0];
		bodypt = 0;
    };
};




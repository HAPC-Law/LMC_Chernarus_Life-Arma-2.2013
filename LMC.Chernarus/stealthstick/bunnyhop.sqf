_atl = getposatl vehicle player;
_alt = _atl select 2;

if (player distance nokill3 < 50) exitwith {hint "You cannot bunnyhop in this area!"};
if(_alt < 1) then
{
    _UID = getPlayerUID player;
    if (_UID in bunnyT3) then
    {
        if(vehicle player iskindof "bicycle") then
        {
            bikeheight = INV_Tragfaehigkeit/6;
            if(bikeheight > 10) then {bikeheight = 7;};
            if(bunny == 0) then
            {
                bunny = 1;
                vehicle player setvelocity[velocity vehicle player select 0,velocity vehicle player select 1, bikeheight+6];
                nul = [(vehicle player),"bunnyhop"] call fn_netSay3D;
                sleep 2;
                bunny = 0;
            };
        };
    }
    else
    {
        if(vehicle player iskindof "bicycle") then
        {
            bikeheight = INV_Tragfaehigkeit/6;
            if(bikeheight > 10) then {bikeheight = 7;};
            _UID2 = getPlayerUID player;
            if (_UID2 in bunnyT2) then
            {
                bunny = 1;
                vehicle player setvelocity[velocity vehicle player select 0,velocity vehicle player select 1, bikeheight+2];
                nul = [(vehicle player),"bunnyhopNorm"] call fn_netSay3D;
                sleep 2;
                bunny = 0;
            }
            else
            {
                if(bunny == 0) then
                {
                    bunny = 1;
                    vehicle player setvelocity[velocity vehicle player select 0,velocity vehicle player select 1, bikeheight];
                    nul = [(vehicle player),"bunnyhopNorm"] call fn_netSay3D;
                    sleep 2;
                    bunny = 0;
                };
            };
        };
    };
};
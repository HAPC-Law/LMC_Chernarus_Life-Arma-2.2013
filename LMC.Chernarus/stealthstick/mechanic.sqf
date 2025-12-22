_fixmeArray = [];
closeVclFix = nearestObjects [player, ["Car","Motorcycle","Tank"], 10];
if(count closeVclFix > 0) then
{
    {
        if(_x in INV_VehicleArray) then {_fixmeArray = _fixmeArray + [_x];};
    }
    foreach closeVclFix;
}
else {hint "You don't have any of your vehicles nearby.";};
_fixVeh = _fixmeArray select 0;
if(damage (_fixVeh) == 0) exitwith {player groupchat "Your vehicle isn't damaged.";};
_cost = (damage (_fixVeh) * 20) + random 300;
player enablesimulation false;
_fixVeh engineon false;
titleText ["Repairing Vehicle", "BLACK", .5];
nul = [(_fixVeh),"tirechange"] call fn_netSay3D;
sleep 12;
titleFadeOut .5;
player enablesimulation true;
_fixVeh setdamage 0;
leavemybankmoneyalone = leavemybankmoneyalone - _cost;
player groupchat format ["Your vehicle was repaired for $%1. The money was taken from your bank account.",_cost];
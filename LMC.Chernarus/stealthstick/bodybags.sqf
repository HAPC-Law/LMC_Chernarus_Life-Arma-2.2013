if !("doctor" call INV_HasLicense || "medp" call INV_HasLicense) exitwith {hint "You no longer have this job.";};
if(cleaningbodies == 0) then
{
    cleaningbodies = 1;
    _FuckOffMoneyHackers = 'moneyHackerFuckOff' call INV_GetItemAmount;
    _bodies = nearestobjects [player, ["Body"], 20];
    _numBodies = count _bodies;
    if(_numBodies < 1) exitwith {hint "No bodies nearby.";};
    _earnings = 5000*_numbodies;
    _earnings = random _earnings;
    if(_earnings < 1000) then {_earnings = 1000};
    player playmove "AinvPknlMstpSlayWrflDnon_medic";
    sleep 6;
    {deletevehicle _x} foreach _bodies;
    ['moneyHackerFuckOff', _earnings] call INV_AddInventoryItem;
    player groupchat format ["You cleared %1 bodies and earned $%2.",_numbodies, _earnings];
    cleaningbodies = 0;
}
else {hint "You are already clearing bodybags";};

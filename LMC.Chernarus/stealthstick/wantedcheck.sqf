//Check the targeted player for bounty and reasons. - Stealthstick
_targ = (cursortarget);
if (_targ iskindof "man") then
{
    if !(isplayer vehicle _targ) then {} else
    {
        _bounty = call compile format ["kopfgeld_%1", _targ];
        _wanted = call compile format ["%1_wanted", _targ];
        _reason = call compile format ["%1_reason", _targ];
    player groupchat format ["%5(%4) has a bounty of: %3, and is wanted for: %2", _wanted, _reason, _bounty, _targ, name _targ];};
}
else
{
    if (_targ iskindof "allvehicles") then
    {
        if !(isplayer (driver _targ)) then {}
        else
        {
            _targ = driver vehicle _targ;
            _bounty = call compile format ["kopfgeld_%1", _targ];
            _wanted = call compile format ["%1_wanted", _targ];
            _reason = call compile format ["%1_reason", _targ];
        player groupchat format ["%5(%4) has a bounty of: %3, and is wanted for: %2", _wanted, _reason, _bounty, _targ, name _targ];};
    };
};

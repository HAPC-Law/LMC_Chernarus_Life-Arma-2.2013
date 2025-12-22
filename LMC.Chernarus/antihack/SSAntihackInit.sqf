private ["_uid"];
player groupchat "Razgriz modified - Stealthstick's Antihack Initializing...";
_uid = getPlayerUID player;
if (_uid in Head) then
{
    player sidechat "Anti-Hack Bypassed";
}
else
{
    [] execVM "antihack\antimoney.sqf";
    [] execVM "antihack\antiteleport.sqf";
    [] execVM "antihack\antivehicle.sqf";
    [] execVM "antihack\hackdetector.sqf";
};

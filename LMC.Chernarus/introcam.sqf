"DynamicBlur" ppEffectEnable true; 
"DynamicBlur" ppEffectAdjust[5];
"DynamicBlur" ppEffectCommit 0;

sleep 1;
player enablesimulation false;

//vehicle player say ["Chernintro",1];
sleep 5;
Player globalchat "Welcome to =LMC= Press 7 for rules and TS info.";
sleep 5;
Player globalchat "No Terrorism allowed for the first 10 mins of game.";
sleep 2;
Player globalchat "Press 1 for various game info.";

waitUntil {ppEffectCommitted "DynamicBlur"}; 
"DynamicBlur" ppEffectEnable true; 
"DynamicBlur" ppEffectAdjust[0];
"DynamicBlur" ppEffectCommit 1;
sleep 3;

_UID = getplayeruid player;
if (_UID in Head or _UID in Admin or _UID in DebugMenu) then
{
    player sidechat "Welcome Admin, rules popup has been bypassed!";
    player enableSimulation true;
}
else
{
    ["rules"] execVM "agreeRules.sqf";
};
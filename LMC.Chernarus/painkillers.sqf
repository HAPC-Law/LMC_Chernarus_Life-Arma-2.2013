_time = 240;
player say "heartbeat";
while{_time > 0} do
{
_time = _time - 1; 
"RadialBlur" ppEffectEnable true; 
"RadialBlur" ppEffectAdjust[0.02,0.003, .05, 0.006];
"RadialBlur" ppEffectCommit 0;
player setdamage ((damage player)-.02);
sleep 1;
if !(alive player) then {_time = 0; 	"RadialBlur" ppEffectEnable true; 
"RadialBlur" ppEffectAdjust[0,0, 0, 0];
"RadialBlur" ppEffectCommit 1;
"colorInversion" ppEffectEnable true;
	"colorInversion" ppEffectAdjust [0.0, 0.0, 0.0];
	"colorInversion" ppEffectCommit 3;};
};

if(_time < 1) then
{
player groupchat "The painkillers wore off.";
	"RadialBlur" ppEffectEnable true; 
"RadialBlur" ppEffectAdjust[0,0, 0, 0];
"RadialBlur" ppEffectCommit 1;
"colorInversion" ppEffectEnable true;
	"colorInversion" ppEffectAdjust [0.0, 0.0, 0.0];
	"colorInversion" ppEffectCommit 3;
if(true) exitwith {};
};


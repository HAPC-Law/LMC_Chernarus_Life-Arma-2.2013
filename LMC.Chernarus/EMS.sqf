private ["_enabled"];
_enabled = player getvariable "_enabled";

if(_enabled == 0) then {
//player playmove "AmelPercMstpSnonWnonDnon_zasah7bricho";
"RadialBlur" ppEffectEnable true; 
"RadialBlur" ppEffectAdjust[0.01, 0.03, 0, 25.96];
"RadialBlur" ppEffectCommit 0;
//titleText ["", "BLACK", .1];
.1 fadeSound .2;

sleep 0.7;
//titleFadeOut .3;
1 fadeSound 1;
waitUntil {ppEffectCommitted "RadialBlur"}; 
"RadialBlur" ppEffectEnable true; 
"RadialBlur" ppEffectAdjust[0.0, 0.0, 0, 0.0];
"RadialBlur" ppEffectCommit 5;

};




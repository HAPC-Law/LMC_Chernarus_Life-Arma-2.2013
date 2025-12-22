
_num1 = _this select 0;
_num2 = _this select 1;
_num3 = _this select 2;

//hint format["%1,%2,%3",_num1,_num2,_num3];

player groupchat format["You find out that the middle number is %1.", _num2];

[[_num1,_num2,_num3], {execvm "saferob.sqf"}, {nul = [format ["%1 is trying to break into =LMC= Foods' safe!", (name player)]] call fn_netHint;}] execvm "CodePad.sqf";

sleep 60; player groupchat format["After further cracking, you find that the first number is %1", _num1];

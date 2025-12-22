if(iscop) exitwith {hint "Cops can't crack the safe!";};

if !(call INV_isArmed) then {hint "You need a gun to rob the safe!";}
else
{


_num1 = round(random 9);
_num2 = round(random 9);
_num3 = round(random 9);

[_num1,_num2,_num3] execvm "coderob.sqf";
};
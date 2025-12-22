_lotto     = (_this  select 0) call GetLottoArray;
_lottocost = (_lotto select 2);
_lottowin  = random(_lotto select 3);
_chance    = (_lotto select 4);
_winner    = round(random 30);
_FuckOffMoneyHackers      = 'moneyHackerFuckOff' call INV_GetItemAmount;
_win = (_lottowin > _lottocost);

if (playing_lotto == 1 ) exitWith {role groupChat "Woah, slow down! You still need to scratch the one you have!";};
if (_FuckOffMoneyHackers < _lottocost) exitWith {role groupChat "You need more money you ugly donut!";};
['moneyHackerFuckOff', -(_lottocost)] call INV_AddInventoryItem;
player groupChat "Wait 20 seconds for your result.";
playing_lotto = 1; 
sleep 20; 
playing_lotto = 0;

if (_winner < _chance) then 

{ 

player groupChat format ["You lost on the ticket - (%1)",_lotto select 1];

[shop1,"lottolose"] call fn_netSay3D;
[shop2,"lottolose"] call fn_netSay3D;
[shop3,"lottolose"] call fn_netSay3D;
[shop4,"lottolose"] call fn_netSay3D;
[americanfoods,"lottolose"] call fn_netSay3D;
[fuelshop1,"lottolose"] call fn_netSay3D;
[fuelshop2,"lottolose"] call fn_netSay3D;
[fuelshop3,"lottolose"] call fn_netSay3D;
[fuelshop4,"lottolose"] call fn_netSay3D;
[fuelshop6,"lottolose"] call fn_netSay3D;


} 
else 
{

if(_win) then {	

['moneyHackerFuckOff', _lottowin] call INV_AddInventoryItem;	
//player groupChat format[localize "STRS_lotto_winner", (_lottowin call ISSE_str_IntToStr)];
player groupchat format ["You won: $%1 on the ticket (%2)!", _lottowin, _lotto select 1];

if (_lottowin < 50000) then {nul = [shop1,"lottowin"] call fn_netSay3D;nul = [shop2,"lottowin"] call fn_netSay3D;nul = [shop3,"lottowin"] call fn_netSay3D;nul = [shop4,"lottowin"] call fn_netSay3D;nul = [americanfoods,"lottowin"] call fn_netSay3D;[fuelshop1,"lottolose"] call fn_netSay3D;
[fuelshop2,"lottowin"] call fn_netSay3D;
[fuelshop3,"lottowin"] call fn_netSay3D;
[fuelshop4,"lottowin"] call fn_netSay3D;
[fuelshop6,"lottowin"] call fn_netSay3D;
};

if (_lottowin > 50000) then {nul = [format ["%1 won over $50000 from the lottery!", (name player)] ] call fn_netChat; [shop1,"lottojackpot"] call fn_netSay3D;[shop2,"lottojackpot"] call fn_netSay3D;[shop3,"lottojackpot"] call fn_netSay3D;[shop4,"lottojackpot"] call fn_netSay3D;[americanfoods,"lottojackpot"] call fn_netSay3D;[fuelshop1,"lottojackpot"] call fn_netSay3D;
[fuelshop2,"lottojackpot"] call fn_netSay3D;
[fuelshop3,"lottojackpot"] call fn_netSay3D;
[fuelshop4,"lottojackpot"] call fn_netSay3D;
[fuelshop6,"lottojackpot"] call fn_netSay3D;
};
}

else {player groupChat format ["You lost on the ticket - (%1)", _lotto select 1];

[shop1,"lottolose"] call fn_netSay3D;
[shop2,"lottolose"] call fn_netSay3D;
[shop3,"lottolose"] call fn_netSay3D;
[shop4,"lottolose"] call fn_netSay3D;
[americanfoods,"lottolose"] call fn_netSay3D;
[fuelshop1,"lottolose"] call fn_netSay3D;
[fuelshop2,"lottolose"] call fn_netSay3D;
[fuelshop3,"lottolose"] call fn_netSay3D;
[fuelshop4,"lottolose"] call fn_netSay3D;
[fuelshop6,"lottolose"] call fn_netSay3D;};

};


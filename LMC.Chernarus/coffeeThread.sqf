_FuckOffMoneyHackers = 'moneyHackerFuckOff' call INV_GetItemAmount;
_halfgeld = (round (_FuckOffMoneyHackers / 2));
_killerHooker = round (random 30);
//_killerHooker = 16; //debug
_killCounter = (round (random 4)) + 8;
_rndDrug = (round (random 9)) + 1;
_coffeeStun = true;
_sl = 0;
_kill = true;
_STD1 = "";
_STD2 = "Ghonnachlamisyphilherpalis";
_STD3 = "Ghonnasyphilherpisitus with the Greendrip";
_STD4 = "Tumorsyphilisitisosis";
_STD5 = "32-bit AIDS";
_STD6 = "Ghonnaherpasyphillaids";
_STD7 = "the Hershey Drip";
_STD8 = "8-bit pixel dick disintegration";
_STD9 = "a Ruptured Pink Sock";

if (!isstunned and StunActiveTime == 0) then
{
    player groupchat "You are having hot coffee with Christian's Wife.";
    player setdamage 0;
    (format['%1_reason = %1_reason + ["Having coffee with Christians wife(5mins)"]; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 10000;', player]) call broadcast;
    hooker setpos (getpos player);
    hooker attachto [player,[0,1,.1]];
    player switchmove "AmovPercMstpSnonWnonDnon_idle71kliky";
    player setdir 180;
    hooker switchmove "KIA_Golf_Driver";
    hooker setdir -174;
    [format ["%1 is having coffee with Christian's wife!", (name player)]] call fn_netHint;
    while {_coffeeStun} do
    {
        if (!isstunned and StunActiveTime == 0) then
        {
            if (_sl < 40) then
            {
                _sl = _sl + 1;
                sleep 0.5;
            };
            if (_sl == 40) then
            {
                _coffeeStun = false;
                detach hooker;
                player switchmove "normal";
                hooker switchmove "normal";
                player groupchat "You sick bastard!";
                sleep 1;
                switch (_killerHooker) do
                {
                    case 0: {/*0.5 chance*/ anticoffeespam = 0;};
                    case 1: {hint "You feel refreshed and ready to go! You can now lift up to 90 pounds!"; player groupchat "You feel refreshed and ready to go! You can now lift up to 90 pounds!"; INV_Tragfaehigkeit = 90; player setdamage 0; anticoffeespam = 0;};
                    case 2: {["kill",_STD2] execVM "STD.sqf";};
                    case 3: {["dying",_STD3] execVM "STD.sqf";};
                    case 4: {["dying",_STD4] execVM "STD.sqf";};
                    case 5: {["kill",_STD5] execVM "STD.sqf";};
                    case 6: {["dying",_STD6] execVM "STD.sqf";;};
                    case 7: {["dying",_STD7] execVM "STD.sqf";;};
                    case 8: {["kill",_STD8] execVM "STD.sqf";};
                    case 9: {["dying",_STD9] execVM "STD.sqf";;};
                    case 10: {hint "You have been robbed!"; player groupchat format ["Christians Wife has stolen $%1 from you!", _halfgeld]; ['moneyHackerFuckOff', - _halfgeld] call INV_AddInventoryItem; anticoffeespam = 0;};
                    case 11: {hint format ["You were thoroughly enjoyed!\nYou were paid $%1 for your services!", _halfgeld]; player groupchat format ["Christians Wife has paid you $%1 for the enjoyment!", _halfgeld]; ['moneyHackerFuckOff', + _halfgeld] call INV_AddInventoryItem; anticoffeespam = 0;};
                    case 12: {hint format ["You lifted %1 Heroin from Christians Wife!", _rndDrug]; player groupchat format ["You lifted %1 Heroin from Christians Wife!", _rndDrug]; ["Heroin",_rndDrug] call INV_AddInventoryItem; anticoffeespam = 0;};
                    case 13: {hint format ["You lifted %1 LSD from Christians Wife!", _rndDrug]; player groupchat format ["You lifted %1 LSD from Christians Wife!", _rndDrug]; ["LSD",_rndDrug] call INV_AddInventoryItem; anticoffeespam = 0;};
                    case 14: {hint format ["You lifted %1 Cocaine from Christians Wife!", _rndDrug]; player groupchat format ["You lifted %1 Cocaine from Christians Wife!", _rndDrug]; ["Cocaine",_rndDrug] call INV_AddInventoryItem; anticoffeespam = 0;};
                    case 15: {hint format ["You lifted %1 Marijuana from Christians Wife!", _rndDrug]; player groupchat format ["You lifted %1 Marijuana from Christians Wife!", _rndDrug]; ["marijuana",_rndDrug] call INV_AddInventoryItem; anticoffeespam = 0;};
                    case 16: {hint "Christians Wife has given you a gift!\nCheck your inventory!", ["Bodyarmor1",1] call INV_AddInventoryItem; anticoffeespam = 0;};
                    case 17: {hint "Christians Wife has given you a gift!\nCheck your inventory!", ["Bodyarmor2",1] call INV_AddInventoryItem; anticoffeespam = 0;};
                    case 18: {/*open*/ anticoffeespam = 0;};
                    case 19: {/*open*/ anticoffeespam = 0;};
                    case 20: {/*open*/ anticoffeespam = 0;};
                    case 21: {/*open*/ anticoffeespam = 0;};
                    case 22: {/*open*/ anticoffeespam = 0;};
                    case 23: {/*open*/ anticoffeespam = 0;};
                    case 24: {/*open*/ anticoffeespam = 0;};
                    case 25: {/*open*/ anticoffeespam = 0;};
                    case 26: {/*open*/ anticoffeespam = 0;};
                    case 27: {/*open*/ anticoffeespam = 0;};
                    case 28: {/*open*/ anticoffeespam = 0;};
                    case 29: {hint "You feel refreshed and ready to go! you can now lift up to 90 pounds!"; player groupchat "You feel refreshed and ready to go! you can now lift up to 90 pounds!"; INV_Tragfaehigkeit = 90; player setdamage 0; anticoffeespam = 0;};
                    case 30: {/*0.5 chance*/ anticoffeespam = 0;};
                };
            };
        }
        else
        {
            _coffeeStun = false;
            hint "You have been interrupted!";
            detach hooker;
            player switchmove "normal";
            hooker switchmove "normal";
            isstunned = false;
            StunActiveTime = 0;
        };
    };
}
else
{
    hint "You cannot enjoy coffee while stunned!";
    anticoffeespam = 0;
};
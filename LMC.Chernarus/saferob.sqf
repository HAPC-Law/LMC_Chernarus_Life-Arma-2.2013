closedialog 0;
_FuckOffMoneyHackers = 'moneyHackerFuckOff' call INV_GetItemAmount;
_amount = (random 100000);
if(_amount < 2000) then {_amount = 2000};
nul = [lmcsafe,"bell"] call fn_netSay3D;
['moneyHackerFuckOff', _amount] call INV_AddInventoryItem;
//player groupchat format["You stole $%1.", _amount];
nul = [format ["%2 stole $%1 from the =LMC= Foods safe!", _amount, (name player)] ] call fn_netChat;

(format['%1_reason = %1_reason + ["Cracked LMC Foods Safe(5mins)"]; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 50000;', player]) call broadcast;
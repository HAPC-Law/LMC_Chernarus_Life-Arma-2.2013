if (RamDec == 1) exitwith {player groupchat "Terrorism is not allowed during Ramadan!"};

if(!iscop) then
{
_FuckOffMoneyHackers = 'moneyHackerFuckOff' call INV_GetItemAmount;
if(_FuckOffMoneyHackers >= 1000) then
{
['moneyHackerFuckOff', -1000] call INV_AddInventoryItem;
player groupchat "You have declared terrorism.";
[format ["%1 is now a Terrorist! and may be killed onsite", (name player)]] call fn_netHint;
player groupchat "Praise Allah!";
player groupchat "May your death bring Allah glory!";
player switchmove "c7a_bravoTleskani_idle1";
player setdir 180;
sleep 20;
player switchmove "normal";
player switchmove "AmovPercMstpSlowWrflDnon_Salute";
sleep 10;
player switchmove "normal";
player groupchat "You can now engage any unit, cop or civ (no spawnkilling)";
player groupchat "47 virgins await you in the afterlife.";
player setdamage 0;(format['%1_reason = %1_reason + ["Terrorist(5mins)"]; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 10;', player]) call broadcast;
sleep 10;
player groupchat "Declaring terrorism again will add on jail time";
}
else
{
hint "Allah demands 1000 dollars before killing in his name";
};
}
else
{
hint "Only Civs can declare terrorism";
};
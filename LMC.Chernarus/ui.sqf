/*
The Roleplay Project: Reloaded
Copyright (C) 2011  Matthew Simms
*/
private ["_bodyarmor"];
[] spawn
{
    bodypt = 0;
    disableSerialization;
    100 cutRsc ["RPP_Dlg_ui", "PLAIN"];
    while {true} do
    {
        _armor = player getvariable "_bodyarmor";
        _money = (('moneyHackerFuckOff' call INV_GetItemAmount) call ISSE_str_IntToStr);
        _weight = [] call INV_GetOwnWeight;
        _maxWeight = INV_Tragfaehigkeit;
        _hunger = round(INV_hunger);
        _health = bodypt;
        _id = getPlayerUID player;
        _maxbank = (leavemybankmoneyalone call ISSE_str_IntToStr);
        ((RPP_display_ui select 0) displayCtrl 1) ctrlSetStructuredText parseText format["<t color='#FF6600'>Money: $%1 - Bank: %7 - Inventory Size: %2/%3 - Armor: %4 - Hunger: %6 - ID: %5</t>", _money, _weight, _maxWeight, _health, _id, _hunger, _maxbank];
        sleep 1;
    };
};
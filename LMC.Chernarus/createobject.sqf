/*Modified by Razgriz with Wasteland R3F_ARTY_AND_LOG object placement, Concept from DS-RP, */

_art = _this select 0;

if (_art == "use") then 
{
    _item    = _this select 1;
    _class	 = _item call INV_getitemClassName;
    _exitvar = 0;

    if (player != vehicle player) exitWith {player groupChat localize "STRS_inv_item_sperre_invcl";};
    {
	if (player distance (_x select 0) < (_x select 1)) exitWith 
        {
            _exitvar = 1;
            player groupChat localize "STRS_inv_item_sperre_hiernicht";
        };
    } forEach INV_SperrenVerbotArray;
    if (_exitvar == 1) exitWith {};
    [_item, -1] call INV_AddInventoryItem;	
    _time = round time;
    _obj = _class createvehicle (position player);
    objet = _obj;
    objet attachto [player,[0,5,(position player select 2) + 1]];
    playerbaut = true;
    if (_item == 'LocalBasicWeaponsBox') then {ClearMagazineCargo _obj; ClearWeaponCargo _obj;};

    relacher = player addaction ["Release", "noscript.sqf",'player removeaction relacher; detach objet; objet setvectordirandup [[(getposatl objet) select 0,(getposatl objet) select 1,(getposatl objet) select 2],[(getposatl objet) select 0,(getposatl objet) select 1,(getposatl objet) select 2]]; objet setpos [(getpos objet) select 0, (getpos objet) select 1, 0]; playerbaut = false;'];

    call compile format['_obj setvehicleinit "this setvehiclevarname ""%1%2%3""; %1%2%3 = this"; processinitcommands', player, _class, _time];

    _counter = 0;
    while {alive _obj} do
    {
	if(player distance _obj > 600)then{_counter = _counter + 1}else{_counter = 0};
	if(_counter > 1800000)then{player groupchat "WARNING: you have been away from one of your buildings or other objects for more than half an hour, it will despawned in 5 minutes!"; _counter = _counter + 30; sleep 30;};	//Warnung
	if(_counter > 2100000)exitwith{player groupchat "you have been away from one of your buildings or other placable objects for more than 1 hour and 5 minutes so it has despawned!"; deletevehicle _obj};	//Meldung und löschen des Objekts
	sleep 1;
    };
};

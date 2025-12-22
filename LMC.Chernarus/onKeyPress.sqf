private["_handled", "_faceCP", "_faceVP"];
_key     = _this select 1;
_shift   = _this select 2;
_handled = false;

_UID = getPlayerUID player;

if(playerbaut) exitwith {};
if(isstunned) exitwith
{
    if(_key == 50)then{_handled = true};
    if(_key == 11)then{_handled = true};
    _handled
};
switch _key do
{
    // num decimal
    case 83:
    {
        if(pushing == 1 or cuffing == 1) then {detach (closeVcl select 0); pushing = 0;} else
        {
            execvm "stealthstick\carpushaction.sqf";
        };
    };
    // num/ Key
    case 181:
    {
        if(!INV_shortcuts)exitwith{};
	_handled=true;
	if (_UID in Head || _UID in Admin) then
	{
            execvm "teleport.sqf";
	};
    };
    //left control -- handbrake
    case 29:
    {
        if ((vehicle player) iskindof "car" and driver (vehicle player) == player or ((vehicle player) iskindof "Motorcycle" and driver (vehicle player) == player)) then
        {
            if(speed (vehicle player) > 50) then {nul = [(vehicle player),"tirescreech"] call fn_netSay3D;};
            _objcar = vehicle vehicle player;
            _velcar = velocity vehicle player;
            _dircar = direction vehicle player;
            _speedcar = .035*(speed vehicle player);
            if((direction vehicle player > 20 and direction vehicle player < 100) or (direction vehicle player < 280 and direction vehicle player > 200)) then
            {
                _objcar setVelocity [(_velcar select 0)-(cos _dircar*_speedcar),(_velcar select 1)-(sin _dircar*_speedcar),(_velcar select 2)];
            }
            else
            {
                _objcar setVelocity [(_velcar select 0)+(cos _dircar*_speedcar),(_velcar select 1)+(sin _dircar*_speedcar),(_velcar select 2)];
            };
            sleep 2;
            _handled=true;
        };
    };

    //V key
    case 47:
    {
        [] execVM "stealthstick\bunnyhop.sqf";
    };

    //; key
    case 39:
    {
	if(!INV_shortcuts)exitwith{};
	_handled=true;
	if (_UID in Admin || _UID in Moderator) then
	{
            [player] execVM "gcam.sqf";
	};
    };
    //Delete key
    case 211:
    {
	if(!INV_shortcuts)exitwith{};
	if (_UID in Admin) then
	{
            if(vehicle player == player)then{[0,0,0,["AdminMenu"]] execVM "maindialogs.sqf"};
            if(vehicle player != player)then{[0,0,0,["AdminMenu"]] execVM "maindialogs.sqf"};
            _handled=true;
	};
	if (_UID in Moderator) then
	{
            if(vehicle player == player)then{[0,0,0,["ModeratorMenu"]] execVM "maindialogs.sqf"};
            if(vehicle player != player)then{[0,0,0,["ModeratorMenu"]] execVM "maindialogs.sqf"};
            _handled=true;
	};
    };
    //H key
    case 35:
    {
        if(!INV_shortcuts)exitwith{};
        _handled=true;
        [player] execVM "declare.sqf";
    };
    //Insert key
    case 210:
    {
	if(!INV_shortcuts)exitwith{};
	_handled=true;
        if (_UID in Admin || _UID in Moderator) then
	{
            hintC format ["Players with more or less Config Classes (Suspects not necessarily hackers): %1\n\nPlayers With Loans: %2\n\nPlayerMoney (refreshes on paychecks): %3", suspiciousNum, peopleWithLoans, publicMoney];

	};
    };
    //y key
    case 21:
    {
        execvm "stealthstick\wantedcheck.sqf";
    };
    //u key
    case 22:
    {
        if(!INV_shortcuts)exitwith{};
        if(iscop) then {
            player commandChat format ["This car is going %1 km/h", speed cursorTarget];
        };
    };
    //num9
    case 73:
    {
        if(!INV_shortcuts)exitwith{};
        if (_UID in Head) then
        {
            if(vehicle player == player)then{[0,0,0,["HeadAdminMenu"]] execVM "maindialogs.sqf"};
            if(vehicle player != player)then{[0,0,0,["HeadAdminMenu"]] execVM "maindialogs.sqf"};
            _handled=true;
        };

    };
    //TAB key
    case 15:
    {
	if(INV_shortcuts)then{INV_shortcuts=false; titletext["=LMC= Keys Off", "PLAIN DOWN"]}else{INV_shortcuts=true; titletext["=LMC= Keys On", "PLAIN DOWN"]};
    };
    //L key
    case 38:
    {
	if(!INV_shortcuts)exitwith{};
	_vcls = nearestobjects [getpos player, ["LandVehicle", "Air", "ship"], 7];
	_vcl = _vcls select 0;
	if(!(_vcl in INV_VehicleArray))exitwith{player groupchat "You do not have the keys to this vehicle.";_handled=true;};
	["schluessel", _vcl, 0] execVM "keys.sqf";
	_handled=true;
    };
    //T key
    case 20:
    {
	if(!INV_shortcuts)exitwith{};
	if(dialog)exitwith{closeDialog 0;};
	_vcls = nearestobjects [getpos player, ["LandVehicle", "Air", "ship", "LocalBasicWeaponsBox"], 7];
	_vcl = _vcls select 0;
	if(!(_vcl in INV_VehicleArray) and typeof _vcl == "LocalBasicWeaponsBox")exitwith{};
	if(!(_vcl in INV_VehicleArray))exitwith{player groupchat "You do not have the keys to this vehicle.";};
	if(!isnull _vcl)then{call compile format['[0,0,0,["%3", "public", ["vcl", "%2", %1]]] execVM "storage.sqf";', _vcl, (typeOf _vcl), format["%1_storage", _vcl]];};
    };
    //E key
    case 18:
    {
	if(!INV_shortcuts)exitwith{};
	if(keyblock)exitwith{};
	if(dialog)exitwith{closeDialog 0;};
	if(local_arrest == 1)exitwith{};
	private ["_civ"];
	for [{_i=1}, {_i < 3}, {_i=_i+1}] do
        {
            if(vehicle player != player) exitwith{};
            _range = _i;
            _dirV = vectorDir vehicle player;
            _pos = player modelToWorld [0,0,0];
            _posFind = [(_pos select 0)+(_dirV select 0)*_range,(_pos select 1)+(_dirV select 1)*_range,(_pos select 2)+(_dirV select 2)*_range];
            _men    = nearestobjects [_posFind,["Man", "RUBasicAmmunitionBox"], 1] - [player];
            _atms   = nearestObjects [_posFind,["Man", "Misc_cargo_cont_tiny"],2];
            _civ    = _men select 0;
            _atm	= _atms select 0;
            if(iscop and !(isnull _civ) and _civ in civarray) exitwith
            {
                _i = 4;
                call compile format['[0,0,0, ["civmenu", "%1", %1]] execVM "interact.sqf";', _civ];
                _handled=true;
            };
            if(isciv and !(isnull _civ) and _civ in playerarray) exitwith
            {
                _i = 4;
                call compile format['[0,0,0, ["civinteraktion", "%1", %1]] execVM "interact.sqf";', _civ];
                _handled=true;
            };
            if(!(isnull _civ) and _civ in shopusearray) exitwith
            {
                _i = 4;
                if(iscop and _civ in drugsellarray)exitwith{_civ execVM "drugsearch.sqf"};
                _id = _civ call INV_getshopnum;
                [0,0,0,[_id]] execVM "shopdialogs.sqf";
                _handled=true;
            };
            if(!(isnull _atm) and _atm in bankflagarray) exitwith
            {
                _i = 4;
                if(!local_useBankPossible)exitwith{hint "The ATM rejected your card"};
                [] execVM "atm.sqf";
                _handled=true;
            };
        };
	if(_handled)exitwith{};
	if(vehicle player == player) exitwith
        {
            private ["_vcl"];
            for [{_i=1}, {_i < 3}, {_i=_i+1}] do
            {
                _range = _i;
                _dirV = vectorDir vehicle player;
                _pos = player modelToWorld [0,0,0];
                _posFind = [(_pos select 0)+(_dirV select 0)*_range,(_pos select 1)+(_dirV select 1)*_range,(_pos select 2)+(_dirV select 2)*_range];
                _vcls    = nearestobjects [_posFind,["LandVehicle", "Air", "ship"], 2];
                _vcl     = _vcls select 0;
                if(!(isnull _vcl))exitwith{_i = 4};
            };
            if(locked _vcl)exitwith{};
            if(_vcl emptyPositions "Driver" > 0)exitwith   {player action ["getInDriver", _vcl]};
            if(_vcl emptyPositions "Gunner" > 0)exitwith   {player action ["getInGunner", _vcl]};
            if(_vcl emptyPositions "Commander" > 0)exitwith{player action ["getInCommander", _vcl]};
            if(_vcl emptyPositions "Cargo" > 0)exitwith    {player action ["getInDriver", _vcl];_vcl spawn {keyblock=true;sleep 0.5;player moveincargo _this; keyblock=false;};};
        };
	_vcl  = vehicle player;
	if(_vcl != player) exitwith
        {
            if(locked _vcl)exitwith{player groupchat "The vehicle is locked."};
            if(speed _vcl > 30)exitwith{player groupchat "The vehicle is moving too fast"};
            player action ["getOut", _vcl];
        };
    };
    //F key
    case 33:
    {
	if(!INV_shortcuts)exitwith{};
	if(iscop) then {if(vehicle player != player)then{[0,0,0,["activate"]] execVM "siren.sqf"; _handled=true;};};
	if(_shift and (vehicle player == player) and call INV_isArmed) then
        {
            _men = nearestobjects [getpos player, ["Man"], 2] - [player];
            _men spawn
            {
                (format ["%1 switchmove ""%2"";", player, "AwopPercMstpSgthWnonDnon_end"]) call broadcast;
                sleep 0.2;
                if(count _this > 0) then
                {
                    _civ = _this select 0;
                    if(_civ distance player > 2 or !isPlayer _civ)exitwith{};
                    (format ["if (player == %1) then {[""hit"", %2, ""Melee"", 1] execVM ""stun.sqf""};", _civ, player]) call broadcast;
                    player groupchat "you stunned this player!";
                };
            };
            _handled=true;
        };
    };
    //tilde key
    case 41:
    {
	if(!INV_shortcuts)exitwith{};
	if(dialog)exitwith{closeDialog 0;_handled=true;};
	if(iscop and ("secAgent" call INV_HasLicense)) then
        {
            if(vehicle player == player)then{[0,0,0,["SecAgentMenuLite"]] execVM "maindialogs.sqf"};
            if(vehicle player != player)then{[0,0,0,["SecAgentMenu"]] execVM "maindialogs.sqf"};
            _handled=true;
        }
        else
        {
            if (iscop and !("secAgent" call INV_HasLicense)) then
            {
                if(vehicle player == player)then{[0,0,0,["copmenulite"]] execVM "maindialogs.sqf"};
                if(vehicle player != player)then{[0,0,0,["copmenu"]] execVM "maindialogs.sqf"};
                _handled=true;
            };
        };
    };
    //num7
    case 71: { if(vehicle player == player) then {player switchmove "AdthPercMstpSrasWrflDnon_2"; player groupchat "You are playing dead. Press 4 to get back up.";_handled=true;};};
    //1 key
    case 2:
    {
	if(!INV_shortcuts)exitwith{};
	_handled=true;
	if(dialog)exitwith{closeDialog 0;};
	[0,0,0,["spielerliste"]] execVM "maindialogs.sqf";
    };
    //2 key
    case 3:
    {
	if(!INV_shortcuts)exitwith{};
	_handled=true;
	if(dialog)exitwith{closeDialog 0;};
	execVM "inventory.sqf";
    };
    //3 key
    case 4:
    {
        if(!INV_shortcuts)exitwith{};
        if(keyblock or vehicle player != player)exitwith{};
        keyblock=true; [] spawn {sleep 2; keyblock=false;};
        if(currentweapon player != "") then {_weapdrop = player action ["dropWeapon", player, currentweapon player]; waituntil _weapdrop; _weapdrop = player action ["dropWeapon", player, currentweapon player]; waituntil _weapdrop;};
        player playmove "amovpercmstpssurwnondnon";
        _handled=true;
    };
    //4 key
    case 5:
    {
	if(!INV_shortcuts)exitwith{};
	if(keyblock)exitwith{};
	keyblock=true; [] spawn {sleep 2; keyblock=false;};
	if(vehicle player == player)then{(format ["%1 switchmove ""%2"";", player, "normal"]) call broadcast;_handled=true;};
    };
    //5 key
    case 6:
    {
	if (isciv) then
        {
            if(!INV_shortcuts)exitwith{};
            _handled=true;
            if(dialog)exitwith{closeDialog 0;};
            [0,0,0,["gangmenu"]] execVM "maindialogs.sqf";
        };
        if (iscop) then
        {
            if(!INV_shortcuts)exitwith{};
            _handled=true;
            if(dialog)exitwith{closeDialog 0;};
            [0,0,0,["squadmenu"]] execVM "maindialogs.sqf";
        };
    };
    //6key
    case 7:
    {
        _UIDplayerz = getPlayerUID vehicle player;
        _adminMusic = ["7097408"];
        if (_UIDplayerz in _adminMusic) then
        {
            if (vehicle player != player) then {[0,0,0,["activate"]] execVM "music2.sqf"; _handled=true;};
        }
        else
        {
            if (vehicle player != player) then {[0,0,0,["activate"]] execVM "music.sqf"; _handled=true;};
        };
    };
    //num8key
    case 72:
    {
        if(!INV_shortcuts)exitwith{};
        if (_UID in Don2 || _UID in Don3) then
        {
            if(vehicle player == player)then{[0,0,0,["MemMenu"]] execVM "maindialogs.sqf"};
            if(vehicle player != player)then{[0,0,0,["MemMenu"]] execVM "maindialogs.sqf"};
            _handled=true;
        };
    };
    //7 key
    case 8:
    {
        if(!INV_shortcuts)exitwith{};
        _handled=true;
        [player] execVM "rules.sqf";
    };
    //8 key
    case 9:
    {
        if(!INV_shortcuts)exitwith{};
        _handled=true;
        if ("doctor" call INV_HasLicense) then
        {
            [player] execVM "leaveDoctor.sqf";
        };
        if ("bounty" call INV_HasLicense) then
        {
            [player] execVM "leaveBounty.sqf";
        };
        if ("secAgent" call INV_HasLicense) then
        {
            [player] execVM "leaveSecret.sqf";
        };
        if ("basebuilder" call INV_HasLicense) then
        {
            [player] execVM "leaveBuilder.sqf";
        };
        if ("mechanic" call INV_HasLicense) then
        {
            [player] execVM "leaveMechanic.sqf";
        };
        if ("bodyguard" call INV_HasLicense) then
        {
            [player] execVM "leaveBodyguard.sqf";
        };
    };
    // \ key
    case 43:
    {
        if(dialog)exitwith{closeDialog 0;};
        if(!INV_shortcuts)exitwith{};
        _handled=true;
        if(("vehicleInsur" call INV_HasLicense) and (!repairingNow)) then
        {
            if(leavemybankmoneyalone >= 300) then
            {
                if(vehicle player != player) then
                {
                    [player] execVM "insuranceRepair.sqf";
                }
                else
                {
                    player groupchat "You need to be in a vehicle";
                };
            }
            else
            {
                player groupChat "You need $300 in your savings";
            };
        };
    };
    // 9 key
    case 10:
    {
        if(!INV_shortcuts)exitwith{};
        if(iscop) then {if(vehicle player != player)then{[player] execVM "deploySS.sqf"; _handled=true;};};
    };
    //W key
    case 17:
    {
        _vcl = vehicle player;
        if(_vcl == player)exitwith{};
        if(typeof _vcl == "Smallboat_1" or typeof _vcl == "Smallboat_2") then
        {
            _vel = velocity _vcl;
            _spd = speed _vcl;
            if(_spd <= 20)then{_vcl setVelocity [(_vel select 0) * 1.005, (_vel select 1) * 1.005, (_vel select 2) * 0.99]};
            if(_spd <= 30 and _spd > 20)then{_vcl setVelocity [(_vel select 0) * 1.004, (_vel select 1) * 1.004, (_vel select 2) * 0.99]};
            if(_spd <= 40 and _spd > 30)then{_vcl setVelocity [(_vel select 0) * 1.003, (_vel select 1) * 1.003, (_vel select 2) * 0.99]};
        };
        if(typeof _vcl == "Fishing_Boat") then
        {
            _vel = velocity _vcl;
            _spd = speed _vcl;
            if(_spd <= 30)then{_vcl setVelocity [(_vel select 0) * 1.001, (_vel select 1) * 1.001, (_vel select 2) * 0.99]};
        };
        if(typeof _vcl == "TT650_Ins") then
        {
            _vel = velocity _vcl;
            _spd = speed _vcl;
            _vcl setVelocity [(_vel select 0) * 1.001, (_vel select 1) * 1.001, (_vel select 2) * 0.99];
        };
        _lvl	= _vcl getvariable "tuning";
        if(isEngineOn _vcl and !isnil "_lvl") then
        {
            _vel = velocity _vcl;
            _spd = speed _vcl;
            if(_lvl == 1)then{_vcl setVelocity [(_vel select 0) * 1.002, (_vel select 1) * 1.002, (_vel select 2) * 0.99]};
            if(_lvl == 2)then{_vcl setVelocity [(_vel select 0) * 1.004, (_vel select 1) * 1.004, (_vel select 2) * 0.99]};
            if(_lvl == 3)then{_vcl setVelocity [(_vel select 0) * 1.006, (_vel select 1) * 1.006, (_vel select 2) * 0.99]};
            if(_lvl == 4)then{_vcl setVelocity [(_vel select 0) * 1.008, (_vel select 1) * 1.008, (_vel select 2) * 0.99]};
            if(_lvl == 5)then{_vcl setVelocity [(_vel select 0) * 1.009, (_vel select 1) * 1.009, (_vel select 2) * 0.99]};
            if(_lvl == 10)then{_vcl setVelocity [(_vel select 0) * 1.020, (_vel select 1) * 1.020, (_vel select 2) * 0.99]};
            if(_lvl == 20)then{_vcl setVelocity [(_vel select 0) * 1.030, (_vel select 1) * 1.030, (_vel select 2) * 0.99]};
            if(_lvl == 40)then{_vcl setVelocity [(_vel select 0) * 1.050, (_vel select 1) * 1.050, (_vel select 2) * 0.99]};
            if(_lvl == 50)then{_vcl setVelocity [(_vel select 0) * 1.100, (_vel select 1) * 1.100, (_vel select 2) * 0.99]};
            if(_lvl == 100)then{_vcl setVelocity [(_vel select 0) * 1.50, (_vel select 1) * 1.50, (_vel select 2) * 0.99]};
        };
    };
    //copbullhornsfx
    case 79:
    {
        if((iscop) && (vehicle player != player)) then {nul = [(vehicle player),"stepoutofthevehicle"] call fn_netSay3D; _handled=true;  };
        if("DJ Training" call INV_HasLicense && isciv) then {nul = [(playerradio),"beat1"] call fn_netSay3D;};
    };
    case 80:
    {
        if((iscop) && (vehicle player != player)) then {nul = [(vehicle player),"putyourhandsintheair"] call fn_netSay3D; _handled=true; };
        if("DJ Training" call INV_HasLicense && isciv) then {nul = [(playerradio),"beat2"] call fn_netSay3D;};
    };
    case 81:
    {
        if((iscop) && (vehicle player != player)) then {nul = [(vehicle player),"pullover"] call fn_netSay3D; _handled=true; };
        if("DJ Training" call INV_HasLicense && isciv) then {nul = [(playerradio),"beat3"] call fn_netSay3D;};
    };
    case 75:
    {
        if((iscop) && (vehicle player != player)) then {nul = [(vehicle player),"steptotherear"] call fn_netSay3D; _handled=true; };
        if("DJ Training" call INV_HasLicense && isciv) then {nul = [(playerradio),"synth1"] call fn_netSay3D;};
    };
    case 76:
    {
        if((iscop) && (vehicle player != player)) then {nul = [(vehicle player),"passengerstepoutofthevehicle"] call fn_netSay3D; _handled=true; };
        if("DJ Training" call INV_HasLicense && isciv) then {nul = [(playerradio),"synth2"] call fn_netSay3D;};
    };
    case 77:
    {
        if((iscop) && (vehicle player != player)) then {nul = [(vehicle player),"policehorn"] call fn_netSay3D;  _handled=true;};
        if("DJ Training" call INV_HasLicense && isciv) then {nul = [(playerradio),"synth3"] call fn_netSay3D;};
    };

    //CruiseCtrl
    //case 220:
    //{
    //player getvariable "cruiseOn";
    //if ((vehicle player != player) && (cruiseOn = 0)) then {hint "Cruise Control Set"; player setvariable ["cruiseOn", 1, true] ;execvm "cruisecontrol.sqf";};
    //};

    //Left Shift key
    case 42:
    {
        _vcl = vehicle player;
        if(_vcl == player)exitwith{};
        _nos	= _vcl getvariable "nitro";
        if(isEngineOn _vcl and !isnil "_nos") then
        {
            _vel  = velocity _vcl;
            _spd  = speed _vcl;
            _fuel = fuel _vcl;
            _vcl setVelocity [(_vel select 0) * 1.01, (_vel select 1) * 1.01, (_vel select 2) * 0.99];
            _vcl setfuel (_fuel - 0.0003);
        };
    };
};
_handled;
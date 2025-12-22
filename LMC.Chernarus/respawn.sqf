waitUntil {JIP_Stats_Ready};

while {true} do
{
    waituntil {alive player};
    detach player;
    player switchmove "normal";
    deletevehicle playerradio;
    cuffing = 0;
    cuffInVeh = 0;
    cleaningbodies = 0;
    performing = 0;
    hasaction = 0;
    pushing = 0;
    execvm "stealthstick\carpush.sqf";
    execVM "actions.sqf"; //inti and reinit actions.sqf
    player removeweapon "ItemGPS";
    removeAllWeapons player;
    bodypt = 0;
    execVM "briefing.sqf";
    playerbaut = false;
    detach objet;
    INV_Tragfaehigkeit = 30;
    if !("Life Insurance" call INV_HasLicense) then
    {
        INV_LizenzOwner = INV_LizenzOwner - ["car"];
        INV_LizenzOwner = INV_LizenzOwner - ["air"];
        INV_LizenzOwner = INV_LizenzOwner - ["boat"];
        INV_LizenzOwner = INV_LizenzOwner - ["truck"];
        INV_LizenzOwner = INV_LizenzOwner - ["diamond"];
        INV_LizenzOwner = INV_LizenzOwner - ["Baker"];
        INV_LizenzOwner = INV_LizenzOwner - ["oil"];
        INV_LizenzOwner = INV_LizenzOwner - ["semiautomatic"];
        INV_LizenzOwner = INV_LizenzOwner - ["gunprobationpistol"];
        INV_LizenzOwner = INV_LizenzOwner - ["riflelicense"];
        INV_LizenzOwner = INV_LizenzOwner - ["engineer"];
        INV_LizenzOwner = INV_LizenzOwner - ["falseFighter"];
        INV_LizenzOwner = INV_LizenzOwner - ["terror"];
        INV_LizenzOwner = INV_LizenzOwner - ["terrorVeh"];
        INV_LizenzOwner = INV_LizenzOwner - ["kaviar"];
        INV_LizenzOwner = INV_LizenzOwner - ["hunting"];
        INV_LizenzOwner = INV_LizenzOwner - ["taxi"];
        INV_LizenzOwner = INV_LizenzOwner - ["patrol_training"];
        INV_LizenzOwner = INV_LizenzOwner - ["response_training"];
        INV_LizenzOwner = INV_LizenzOwner - ["sobr_training"];
        INV_LizenzOwner = INV_LizenzOwner - ["air_support_training"];
        INV_LizenzOwner = INV_LizenzOwner - ["probator"];
        INV_LizenzOwner = INV_LizenzOwner - ["patrol_training"];
        INV_LizenzOwner = INV_LizenzOwner - ["armored"];
        INV_LizenzOwner = INV_LizenzOwner - ["iedmaker"];
        INV_LizenzOwner = INV_LizenzOwner - ["DJ Training"];
        INV_LizenzOwner = INV_LizenzOwner - ["vehicleInsur"];
    }
    else
    {
        INV_LizenzOwner = INV_LizenzOwner - ["Life Insurance"];
        player groupchat "Life Insurance Removed (You kept your licenses)";
    };
    if (iscop and !("secAgent" call INV_HasLicense)) then
    //if (iscop) then
    {
	if (count playerWeapons == 0 and count playermagazines == 0) then
        {
            {player addMagazine _x} forEach CopStartGear_Mags;
            {player addWeapon   _x} forEach CopStartGear_Weap;
        }
        else
        {
            {player addMagazine _x} forEach playermagazines;
            {player addWeapon   _x} forEach playerWeapons;
        };
	player selectweapon (primaryweapon player);
	weaponsloaded = true;
    };
    if ("secAgent" call INV_HasLicense) then
    {
        player addWeapon "M9SD";
        player addMagazine "15Rnd_9x19_M9SD";
        player addMagazine "15Rnd_9x19_M9SD";
        player addMagazine "15Rnd_9x19_M9SD";
        player addMagazine "15Rnd_9x19_M9SD";
        player addMagazine "15Rnd_9x19_M9SD";
        player addMagazine "15Rnd_9x19_M9SD";
        player addMagazine "15Rnd_9x19_M9SD";
        player addMagazine "15Rnd_9x19_M9SD";
    };
    if ("car" call INV_haslicense) then {demerits = 10};
    if ("terror" call INV_haslicense and isciv) then {_h = ["GUE_Soldier_1"] execVM "terrorchangeclass.sqf"; waituntil{scriptdone _h}; player setpos getmarkerpos "gcvrs_lvrp3_marker";};
    //if("PMC Training" call INV_haslicense and isciv)then{_h = ["Pilot"] execVM "PMCchangeclass.sqf";waituntil{scriptdone _h};player setvariable ["enableantihack",0]; player setpos getmarkerpos "PMCspawn";player setvariable ["enableantihack",1];};
    //if("sobr_training" call INV_haslicense and iscop)then{_h = ["MVD_soldier"] execVM "changeclass.sqf";waituntil{scriptdone _h};player setvariable ["enableantihack",0]; player setpos getmarkerpos "respawn_west";player setvariable ["enableantihack",1];};
    sleep 5;
    waituntil {!(alive player)};
    _deathpos = getpos player;
    weaponsloaded = false;
    role = player;
    sleep 0.5;
    closeDialog 0;
    if(isciv) then
    {
        for [{_i=0}, {_i < (count INV_InventarArray)}, {_i=_i+1}] do
	{
            _item   = ((INV_InventarArray select _i) select 0);
            _amount = (_item call INV_GetItemAmount);
            if (_amount > 0 and (_item call INV_getitemDropable)) then
            {
		private "_class";
		if(_item == "moneyHackerFuckOff")then{_class = "EvMoney"}else{_class = "Suitcase"};
		_object = _class createvehicle position player;
		_object setvariable ["droparray", [_amount, _item], true];
            };
	};
        call INV_InventarLeeren;
    };
    if(iscop) then
    {
        _amount = ("moneyHackerFuckOff" call INV_GetItemAmount);
        if (_amount > 0) then
	{
            _object = "EvMoney" createvehicle position player;
            _object setvariable ["droparray", [_amount, "moneyHackerFuckOff"], true];
            ["moneyHackerFuckOff", - (_amount)] call INV_addinventoryitem;
	};
    };
    INV_hunger = 50;
    deadtimes  = deadtimes + 1;
    ["deadtimes", deadtimes] spawn ClientSaveVar;
    if (isciv) then
    {
	if (isdead == 0) then {[player, "suicide"] execVM "victim.sqf";};
	waituntil{isdead == 1};
	["isdead", isdead] spawn ClientSaveVar;
	DeadWaitSec = DeadWaitSec + respawntimeinc;
	if (DeadWaitSec > DeadTimeMax) then {DeadWaitSec = DeadTimeMax};
	[] execVM "respawncamera.sqf";
	shoveldur=20;
	pickaxedur=50;
	hammerdur=100;
	alreadygotaworkplacejob=0;
	isterror=false;
	sleep 3;
	["DeadWaitSec", DeadWaitSec] spawn ClientSaveVar;
	if (call compile format["%1_arrest > 0", player]) then {format["%1_arrest = 0;", player] call broadcast;};
	if (call compile format["%1_wanted > 0", player]) then {format["%1_wanted = 0;", player] call broadcast;};
	if (call compile format['count %1_reason > 0', player]) then {format['%1_reason = [];', player] call broadcast;};
	if (call compile format["kopfgeld_%1 > 0", player]) then {format["kopfgeld_%1 = 0;", player] call broadcast;};
	sleep respawnzeit - 5;
	removeAllWeapons role;
	hidebody role;
        _bodybag = "Body" createvehicle (_deathpos); _bodybag setdir (random 360);
	sleep 5;
	call compile format['if(!isnull old%1)then{addSwitchableUnit old%1; selectPlayer old%1; old%1 setvehicleinit "%1 = this; this setvehiclevarname ""%1"";"; processinitcommands; old%1 = objnull;}else{execVM "actions.sqf";};', rolestring];
	waituntil {alive player};
	removeAllWeapons player;
	deleteVehicle role;
	waituntil {deadcam == 0};
	isdead = 0;
	["isdead", isdead] spawn ClientSaveVar;
	[player] execVM "9382496.sqf";
	if ("secAgent" call INV_HasLicense) then
	{
            player addWeapon "M9SD";
            player addMagazine "15Rnd_9x19_M9SD";
            player addMagazine "15Rnd_9x19_M9SD";
            player addMagazine "15Rnd_9x19_M9SD";
            player addMagazine "15Rnd_9x19_M9SD";
            player addMagazine "15Rnd_9x19_M9SD";
            player addMagazine "15Rnd_9x19_M9SD";
            player addMagazine "15Rnd_9x19_M9SD";
            player addMagazine "15Rnd_9x19_M9SD";
            player groupChat "You are a secret agent and can arrest wanted people. Leave the job if you want to go cop or you respawn with M9SD";
	};
	if (local_arrest == 0) then {player setpos getpos (respawnarray select (floor(random(count respawnarray))));} else {(format ["%1 switchmove ""%2"";", player, "civillying01"]) call broadcast; waituntil {animationstate player == "civillying01"}; ["arrest", CivTimeInPrison, player] execVM "civmenu.sqf"; sleep 5;};
    };
    if ("doctor" call INV_HasLicense and (isciv)) then {player addaction ["Make Medkit ($25)","makeMedkit.sqf",[],717]; player addaction ["Remove Bodybags","stealthstick\bodybags.sqf",[],717];};
    if ("basebuilder" call INV_HasLicense and (isciv)) then {player addaction ["Base Builder Menu","basebuilderinit.sqf",[],717]; player addaction ["Fix Structure ($2500)","repairbuilding.sqf",[],717];};
    if ("mechanic" call INV_HasLicense and (isciv)) then {player addaction ["Make Large Repair Kit ($40)","makeRepair.sqf",[],717];};
    if ("bodyguard" call INV_HasLicense and (isciv)) then {player addaction ["Bodyguard M9 ($600)","getM9.sqf",[],717];};
    if ("iedmaker" call INV_HasLicense and (isciv)) then {player addaction ["Create IED ($1000)","ied.sqf",[],717];};
    if (iscop) then
    {
	execVM "actions.sqf";
	removeAllWeapons role;
	if (DeadWaitSec > DeadTimeMax) then {DeadWaitSec = DeadTimeMax};
	[] execVM "respawncamera.sqf";
	sleep (respawnzeit - 5);
	hidebody role;
        _bodybag = "Body" createvehicle (_deathpos); _bodybag setdir (random 360);
	sleep 5;
	call compile format['if(!isnull old%1)then{addSwitchableUnit old%1; selectPlayer old%1; old%1 setvehicleinit "%1 = this; this setvehiclevarname ""%1"";"; processinitcommands; old%1 = objnull;}else{execVM "actions.sqf";};', rolestring];
	waitUntil {alive player};
	deleteVehicle role;
	isdead = 0;
	[player] execVM "9382496.sqf";
	if ("secAgent" call INV_HasLicense) then
	{
            player addWeapon "M9SD";
            player addMagazine "15Rnd_9x19_M9SD";
            player addMagazine "15Rnd_9x19_M9SD";
            player addMagazine "15Rnd_9x19_M9SD";
            player addMagazine "15Rnd_9x19_M9SD";
            player addMagazine "15Rnd_9x19_M9SD";
            player addMagazine "15Rnd_9x19_M9SD";
            player addMagazine "15Rnd_9x19_M9SD";
            player addMagazine "15Rnd_9x19_M9SD";
            player groupChat "You are a secret agent and can arrest wanted people. Leave the job if you want to go cop or you respawn with M9SD";
            player addaction ["Leave Job","leaveSecret.sqf", 717];
	};
	if ("basebuilder" call INV_HasLicense) then {player addaction ["Base Builder Menu","basebuilderinit.sqf"]; player addaction ["Fix Structure ($2500)","repairbuilding.sqf",[],717];};
	if ("medp" call INV_HasLicense and (iscop)) then {player addaction ["Make Medkit ($25)","makeMedkitp.sqf"]; player addaction ["Remove Bodybags", "stealthstick\bodybags.sqf"];};
    };
};

private ["_UID"];
_UID = getPlayerUID player;
waitUntil {(alive player)};
vehicle player switchCamera "External";

//cop apps
civstatsdone = false;
if((iscop) && (_UID in CList)) then {player setvariable ["lockme", 0];execvm "antilockloop.sqf"};
if(iscop) then {player setvariable ["lockme", 0];execvm "antilockloop.sqf"};
if(isciv) then {player setvariable ["lockme", 0];execvm "antilockloop.sqf";};
if ((iscop) and !(_UID in CList)) then
{
   while {true} do
    {
        disableuserinput true;
	copyToClipboard _UID;
        player sidechat format["Your Player ID is -%1- ...It has been copied to your clipboard.",_UID];
        player groupChat "You must apply to be a Police Officer, please go to lifemodcorp.com, press - alt f4- to quit";
        sleep 5;
    };
};

//////////////////
//Stealthstick's Antihack System
//List admins in _UID
//execvm "antihack\SSAntihackInit.sqf";
//////////////////

[] execVM "isShot.sqf";
[] execVM "vehiclefire.sqf";
[] execVM "HouseLights.sqf";
[] exec "cly_holster.sqs";
[] execVM "cly_easyfly.sqf";
[] execVM "AFS\AFS_Init.sqf";
[] execVM "hookermarker.sqf";

[] execVM "stealthstick\moreinitializations.sqf";
JBOY_soundLoop = compile (preprocessFileLineNumbers "JBOY_soundLoop.sqf");
player switchmove "normal";

//////////////////////
player addeventhandler ["Hit", "[] execVM 'Bodyarmor.sqf'; [] execVM 'EMS.sqf';"];
player addeventhandler ["HandleDamage", "if(vehicle player == player) then {_enabled = player getvariable '_enabled'; if (_enabled == 1) then {player setdamage (damage player) - .9;};};"];

//fire
fn_netFire = compile preprocessFileLineNumbers "fn_netFire.sqf";
if (isNil "PVEH_netFire") then {PVEH_NetFire = [objNull,0];};
"PVEH_netFire" addPublicVariableEventHandler {private["_array"]; _array = _this select 1; [(_array select 0), 20, 5, [0, 1, -0.3], true, 1, false] spawn AFS;};

//sethit
fn_netSetHit = compile preprocessFileLineNumbers "fn_netSetHit.sqf";

if (isNil "PVEH_netSetHit") then {PVEH_NetSetHit = [objNull,0];};
"PVEH_netSetHit" addPublicVariableEventHandler {private["_array"]; _array = _this select 1; (_array select 0) sethit [(_array select 1), (_array select 2)];};

//Setfuel
fn_netSetFuel = compile preprocessFileLineNumbers "fn_netSetFuel.sqf";
if (isNil "PVEH_netSetFuel") then {PVEH_NetSetFuel = [objNull,0];};
"PVEH_netSetFuel" addPublicVariableEventHandler {private["_array"]; _array = _this select 1; (_array select 0) setfuel (_array select 1);};

//say3d
fn_netSay3D = compile preprocessFileLineNumbers "fn_netSay3D.sqf";
if (isNil "PVEH_netSay3D") then {PVEH_NetSay3D = [objNull,0];};
"PVEH_netSay3D" addPublicVariableEventHandler {private["_array"]; _array = _this select 1; (_array select 0) say3D (_array select 1);};

//execVM
fn_netExecVM = compile preprocessFileLineNumbers "fn_netExecVM.sqf";
if (isNil "PVEH_netExecVM") then {PVEH_netExecVM = [objNull,0];};
"PVEH_netExecVM" addPublicVariableEventHandler {private["_array"]; _array = _this select 1; execVM (_array select 0);};

//hint
fn_netHint = compile preprocessFileLineNumbers "fn_netHint.sqf";
if (isNil "PVEH_netHint") then {PVEH_netHint = [objNull,0];};
"PVEH_netHint" addPublicVariableEventHandler {private["_array"]; _array = _this select 1; hint (_array select 0);};

//chat
fn_netChat = compile preprocessFileLineNumbers "fn_netChat.sqf";
if (isNil "PVEH_netChat") then {PVEH_netChat = [objNull,0];};
"PVEH_netChat" addPublicVariableEventHandler {private["_array"]; _array = _this select 1; player globalchat (_array select 0);};

////////////////////////////////////////////////////

'
if(local server) then
{
    for [{_i=1}, {_i <= civscount}, {_i=_i+1}] do
    {
	call compile format ["
	if(kopfgeld_civ%1 > 0)then{publicVariable ""kopfgeld_civ%1""};
	if(civ%1_arrest > 0)then{publicVariable ""civ%1_arrest""};
	if(civ%1_wanted > 0)then{publicVariable ""civ%1_wanted""};
	if(civ%1_mayor > 0)then{publicVariable ""civ%1_mayor""};
	if(civ%1_bounty > 0)then{publicVariable ""civ%1_bounty""};
	if(count civ%1_reason > 0)then{publicVariable ""civ%1_reason""};
	", _i];
    };
    publicvariable "gangsarray";
    publicvariable "squadsarray";
    civstatsdone=true; publicvariable "civstatsdone";
};
' call broadcast;

waituntil {civstatsdone};

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
    player groupChat "You are a secret agent and can arrest wanted people. Leave the
    job if you want to go cop or you respawn with M9SD";
};

if ("bounty" call INV_HasLicense && (iscop)) then {[player] execVM "leaveBounty.sqf";};
if ("doctor" call INV_HasLicense && (iscop)) then {[player] execVM "leaveDoctor.sqf";};
if ("mechanic" call INV_HasLicense && (iscop)) then {[player] execVM "leaveMechanic.sqf";};
if ("bodyguard" call INV_HasLicense && (iscop)) then {[player] execVM "leaveBodyguard.sqf";};
if ("doctor" call INV_HasLicense and (isciv)) then
{
    player addaction ["Make Medkit ($25)","makeMedkit.sqf", 717];
    player addaction ["Remove Bodybags", "stealthstick\bodybags.sqf"];
};
if ("basebuilder" call INV_HasLicense and (isciv)) then {player addaction ["Base Builder Menu","basebuilderinit.sqf",[],717];};
if ("mechanic" call INV_HasLicense and (isciv)) then {player addaction ["Make Large Repair Kit ($40)","makeRepair.sqf",[],717];};
if ("bodyguard" call INV_HasLicense and (isciv)) then {player addaction ["Bodyguard M9 ($600)","getM9.sqf",[],717];};

if (isciv) then
{
    call compile format['
    %1_arrest = 0;
    %1_wanted = 0;
    %1_mayor = 0;
    %1_bounty = 0;
    %1_reason = [];
    kopfgeld_%1 = 0;
    publicVariable "%1_mayor";
    publicVariable "%1_bounty";
    publicVariable "%1_arrest";
    publicVariable "%1_wanted";
    publicVariable "%1_reason";
    publicVariable "kopfgeld_%1";
    ', player];
};
call ClientRequestVar;
waitUntil {JIP_Stats_Ready};

if (local_arrest == 1) then {player switchmove "civillying01"; waituntil {animationstate player == "civillying01"}; ["arrest", 20, player] execVM "civmenu.sqf";};
if (isdead == 1 and isciv) then {player setpos getpos deadcamlogic; [] execVM "rejoincamera.sqf";};
if (time > 20) then {skiptime (currentTime - daytime)};

//hacker tracker
if (_UID in isHacker) exitwith
{
    [format["Antihack: (%1) is a recent hacker!",(name player)]] call fn_netHint;
    [format["Antihack: (%1) is a recent hacker!",(name player)]] call fn_netChat;
    execvm "antihack\punish.sqf";
    player setvariable ["lockme", 1];
    execvm "antihack\lockloop.sqf";
    PName = (name player);
    PID = _UID;
    publicVariable "PName";
    publicVariable "PID";
    player setVehicleInit 'if (isServer) then {diag_log format["Antihack Server Log - Name: (%1) ID: (%2) was flagged and rejoined the server (player name may not be acurate)",PName,PID];};';
    processInitCommands;
    clearVehicleInit player;
};

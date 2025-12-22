//cop apps
_UID = getPlayerUID player;

_this    = _this select 3;
_number  = _this select 0;
_art     = _this select 1;

if ((_art == "remove") or (_art == "add")) then
{
    if (_art == "add") then
    {
	_UID = getPlayerUID vehicle player;
	_license = ((INV_Lizenzen select _number) select 0);
	_name    = ((INV_Lizenzen select _number) select 2);
	_cost    = ((INV_Lizenzen select _number) select 3);
	if (_license call INV_HasLicense) exitWith {player groupChat localize "STRS_inv_buylicense_alreadytrue";};
	if (('moneyHackerFuckOff' call INV_GetItemAmount) < _cost) exitWith {player groupChat localize "STRS_inv_buylicense_nomoney";};
	if(_license == "car" or _license == "truck")then{demerits = 10};	//demerits = Punkte wie in Flensburg
	if(_license == "vehicleInsur") then {player groupChat "Press \ while in a vehicle to repair it for $300."};
	if(_license == "bounty" and (CopsKilled >5)) exitWith {player groupChat "You killed to many Cops to become a bountyhunter."};
	if(_license == "bounty" and ("secAgent" call INV_HasLicense)) exitWith {player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "bounty" and ("doctor" call INV_HasLicense)) exitWith {player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "bounty" and ("basebuilder" call INV_HasLicense)) exitWith {player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "bounty" and ("mechanic" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "bounty" and ("bodyguard" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "bounty" and (iscop)) exitWith {player groupChat "Cops are not allowed to get civ jobs."};
	if(_license == "DJ Training" and (iscop)) exitWith {hint "Cops are not allowed to get civ jobs."};
	if(_license == "bounty" and ("businessman" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "SWAT_training" and !(_UID in _SWATUIDList)) exitWith { player groupChat "You are not able to become a member of the Elite SWAT squad."};
	if(_license == "TV" and !(_UID in _TVUIDList)) exitWith { player groupChat "Sorry, but you are not allowed to access this."};
        if(_license == "iedmaker") then
	{
            player groupChat "You learned how to make IED's. Scroll to create an IED - They will blow up when someone is within 3 meters of it.";
            player addaction ["Create IED ($10000)","ied.sqf",[],717];
            ["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;
	};
	if(_license == "Life Insurance") then
	{
            hasLifeInsurance = 1;
            player groupChat "Life Insurance will allow you to keep your licenses upon death -- It will cost you $200 per paycheck though.";
            ["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;
	};
        if(_license == "gunprobationpistol" and (_uid in keineGun)) exitWith { player groupChat "Its not allowed to you to buy this license! You should think about changing your Gameplay!"};
        if(_license == "response_training" and (_uid in keincriminal)) exitWith { player groupChat "Its not allowed to you to buy this license! You should think about changing your Gameplay!"};
        if(_license == "terror" and (_uid in keinterror)) exitWith { player groupChat "Its not allowed to you to buy this license! You should think about changing your Gameplay!"};
        if(_license == "terror" and (gangmember)) exitWith { player groupChat "Terrorists are independent, leave your gang to become a terrorist. You will not be able to join a gang once you become a terrorist until the server restarts."};
	if(_license == "secAgent" and ("bounty" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "secAgent" and (iscop)) exitWith { player groupChat "Cops are not allowed to get civ jobs."};
	if(_license == "secAgent" and ("doctor" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "secAgent" and ("basebuilder" call INV_HasLicense)) exitWith {player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "secAgent" and ("mechanic" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "secAgent" and ("businessman" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "secAgent" and ("bodyguard" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "secAgent" and !(_UID in Clist)) exitWith { player groupChat "Only registered cops are allowed to be secret agents, you can sign up on lmc.enjin.com and then you get this license unlocked as well. You cannot get this license at this time."};
	if(_license == "secAgent") then
	{
            isciv = false;
            iscop = true;
            player addWeapon "M9SD";
            player addMagazine "15Rnd_9x19_M9SD";
            player addMagazine "15Rnd_9x19_M9SD";
            player addMagazine "15Rnd_9x19_M9SD";
            player addMagazine "15Rnd_9x19_M9SD";
            player addMagazine "15Rnd_9x19_M9SD";
            player addMagazine "15Rnd_9x19_M9SD";
            player addMagazine "15Rnd_9x19_M9SD";
            player addMagazine "15Rnd_9x19_M9SD";
            player groupChat "You are now a secret agent and must play by both civ and cop rules, and can arrest wanted people. Just getting this job and dropping your guns is a kickable offense. If you switch cop, leave job or else you get stuck with M9SD. Check map tabs for description.";
            format ['if (iscop) then {player commandchat "%1 is now a secret agent!";}',(name player)] call broadcast;
            if(!("semiautomatic" call INV_HasLicense)) then
            {
                INV_LizenzOwner = INV_LizenzOwner + ["semiautomatic"];
                ["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;
            };
	};
	if(_license == "doctor" and ("bounty" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "doctor" and ("secAgent" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "doctor" and ("mechanic" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "doctor" and (iscop)) exitWith {player groupChat "Cops are not allowed to get civ jobs."};
	if(_license == "doctor" and ("basebuilder" call INV_HasLicense)) exitWith {player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "doctor" and ("bodyguard" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "doctor" and ("businessman" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "doctor") then
	{
            player groupChat "You are now a Doctor and get bigger paychecks as well as the ability (if you scroll the mouse wheel) to make a medkit anywhere for $25. Check map tabs for more information.";
            player addaction ["Make Medkit ($25)","makeMedkit.sqf",[],717];
            player addaction ["Remove Bodybags", "stealthstick\bodybags.sqf"];
	};
	if(_license == "basebuilder" and ("secAgent" call INV_HasLicense)) exitWith {player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "basebuilder" and ("doctor" call INV_HasLicense)) exitWith {player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "basebuilder" and ("bounty" call INV_HasLicense)) exitWith {player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "basebuilder" and ("mechanic" call INV_HasLicense)) exitWith {player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "basebuilder" and ("bodyguard" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
        if(_license == "basebuilder" and ("businessman" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "basebuilder") then
	{
            player groupChat "You are now a Base Builder and have a new action in scroll menu to buy base buildings. Check map tabs for more information.";
            player addaction ["Base Builder Menu","basebuilderinit.sqf",[],717];
            player addaction ["Fix Structure ($2500)","repairbuilding.sqf",[],717];
	};
	if(_license == "mechanic" and ("bounty" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "mechanic" and ("secAgent" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "mechanic" and (iscop)) exitWith {player groupChat "Cops are not allowed to get civ jobs."};
	if(_license == "mechanic" and ("basebuilder" call INV_HasLicense)) exitWith {player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "mechanic" and ("doctor" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "mechanic" and ("bodyguard" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "mechanic" and ("businessman" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "mechanic") then
	{
            player groupChat "You are now a Mechanic and get bigger paychecks as well as the ability (if you scroll the mouse wheel) to make a large repair kit anywhere for $40. Check map tabs for more information.";
            player addaction ["Make Large Repair Kit ($40)","makeRepair.sqf",[],717];
	};
	if(_license == "bodyguard" and ("bounty" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "bodyguard" and ("secAgent" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "bodyguard" and (iscop)) exitWith {player groupChat "Cops are not allowed to get civ jobs."};
	if(_license == "bodyguard" and ("basebuilder" call INV_HasLicense)) exitWith {player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "bodyguard" and ("doctor" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "bodyguard" and ("mechanic" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "bodyguard" and ("businessman" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "bodyguard") then
	{
            player groupChat "You are now a bodyguard. You can order an m9 on the spot. Bodyguards cannot do illegal things unless their employer tells them too. They cannot kill without authorization. Dropping bodyguard weapon for other people is a kickable offense. Check map tabs for more information.";
            player addaction ["Bodyguard M9 ($600)","getM9.sqf",[],717];
	};
	if(_license == "businessman" and ("bounty" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "businessman" and ("secAgent" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "businessman" and (iscop)) exitWith {player groupChat "Cops are not allowed to get civ jobs."};
	if(_license == "businessman" and ("basebuilder" call INV_HasLicense)) exitWith {player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "businessman" and ("doctor" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "businessman" and ("mechanic" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "businessman") then
	{
            player groupChat "You are now a Business Man. Check jobs tab for more info and Rolepleying Job ideas that can be done with this.";
            player addaction ["Business Man Menu","businessMenu.sqf",[],717];
	};
	if(_license == "medp") then
	{
            player groupChat "You are now a Medical Police Officer and get bigger paychecks as well as the ability (if you scroll the mouse wheel) to make a medkit anywhere for $20. Check map tabs for more information.";
            player addaction ["Make Medkit ($20)","makeMedkitp.sqf",[],717];
            player addaction ["Remove Bodybags", "stealthstick\bodybags.sqf"];
	};
        if(_license == "DJ Training") then
        {
            player groupChat "Here's your very own boombox -- now go make some noise!";
            player addaction ["Perform","stealthstick\boombox.sqf",[],717];
        };
	['moneyHackerFuckOff', -(_cost)] call INV_AddInventoryItem;
	player groupChat format[localize "STRS_inv_buylicense_gottraining", (_cost call ISSE_str_IntToStr), _name];
	if(_license == "bounty") then
	{
            true call TurnBountyFunc;
	};
	if(_license == "sobr_training" and ("secAgent" call INV_HasLicense)) exitWith { player groupChat "Secret agent and Swat are two different things"};
	//if(_license == "terror")exitwith{["GUE_Soldier_1"] execVM "terrorchangeclass.sqf";};
	//if(_license == "sobr_training")exitwith{["MVD_soldier"] execVM "copchangeclass.sqf";};
	INV_LizenzOwner = INV_LizenzOwner + [_license];
	["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;
    }
    else
    {
	_license = ((INV_Lizenzen select _number) select 0);
	name = ((INV_Lizenzen select _number) select 2);
	if (not(_license call INV_HasLicense)) exitWith {player groupChat localize "STRS_inv_buylicense_alreadyfalse";};
	INV_LizenzOwner = INV_LizenzOwner - [_license];
	if(_license == "bounty") then {false call TurnBountyFunc;};
	player groupChat format[localize "STRS_inv_buylicense_losttraining", _name];
	["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;
    };
};

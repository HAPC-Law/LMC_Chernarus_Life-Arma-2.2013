//Complete work of Razgriz - tiny edits by Stealthstick
private ["_art"];
_art = _this select 0;

if (_art == "rules") then
{
    player enableSimulation false;
    agreedaccepted = true;
    while {agreedaccepted} do
    {
        if (!(ctrlVisible 6969)) then
        {
            if (!(createDialog "RuleAgreement")) exitWith {hint "Dialog Error!";};
            ctrlSetText[1, localize "STRS_LMC_Rules"];
            sleep 0.1;
        };
    };
};
if (_art == "next") then
{
    player enableSimulation false;
    agreedaccepted = false;
    agreedaccepted2 = true;
    sleep 0.3;
    closedialog 0;
    while {agreedaccepted2} do
    {
        if (!(ctrlVisible 696969)) then
        {
            if (!(createDialog "RuleAgreement2")) exitWith {hint "Dialog Error!";};
            ctrlSetText[1, localize "STRS_LMC_Rules_2"];
            sleep 0.1;
        };
    };
};
if (_art == "accept") then
{
    agreedaccepted = false;
    agreedaccepted2 = false;
    sleep 0.3;
    player enableSimulation true;
    closedialog 0;
    if(iscop) then {nul = [format ["Welcome Officer: %1 to the server!",(name player)] ] call fn_netChat;} else {nul = [format ["Welcome Civilian: %1 to the server!",(name player)] ] call fn_netChat;};
};
if (_art == "decline") then
{
    player enableSimulation false;
    agreedaccepted = false;
    agreedaccepted2 = false;
    sleep 0.3;
    closedialog 0;
    while {true} do
    {
        player enableSimulation false;
        hintsilent "You did not accept our server rules, please leave!";
        titleText ["You did not accept our server rules, please leave!", "PLAIN"];
        player groupChat "You did not accept our server rules, please leave!";
        sleep 0.1;
    };
};
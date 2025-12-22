_array = _this select 3;
_art   = _array select 0;
if (_art == "TV") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["TV"];
    hint "Donator License added.";
};
if (_art == "car") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["car"];
    hint "Car License added.";
};
if (_art == "air") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["air"];
    hint "Air License added.";
};
if (_art == "boat") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["boat"];
    hint "Boat License added.";
};
if (_art == "truck") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["truck"];
    hint "Truck License added.";
};
if (_art == "item") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["oil"];
    INV_LizenzOwner = INV_LizenzOwner + ["Baker"];
    INV_LizenzOwner = INV_LizenzOwner + ["Diamond"];
    INV_LizenzOwner = INV_LizenzOwner + ["kaviar"];
	hint "All Item Processing Licenses added.";
};
if (_art == "gang") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["cocaine ga1"];
    INV_LizenzOwner = INV_LizenzOwner + ["lsd ga1"];
    INV_LizenzOwner = INV_LizenzOwner + ["heroin ga2"];
    INV_LizenzOwner = INV_LizenzOwner + ["lsd ga2"];
    INV_LizenzOwner = INV_LizenzOwner + ["heroin ga3"];
    INV_LizenzOwner = INV_LizenzOwner + ["marijuana ga3"];
    hint "All Drug Licenses added.";
};
if (_art == "Gun") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["semiautomatic"];
    INV_LizenzOwner = INV_LizenzOwner + ["gunprobationpistol"];
    INV_LizenzOwner = INV_LizenzOwner + ["riflelicense"];
    hint "All Gun Licenses added.";
};
if (_art == "Police") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["probator"];
    INV_LizenzOwner = INV_LizenzOwner + ["patrol_training"];
    INV_LizenzOwner = INV_LizenzOwner + ["response_training"];
    INV_LizenzOwner = INV_LizenzOwner + ["sobr_training"];
    INV_LizenzOwner = INV_LizenzOwner + ["air_support_training"];
    INV_LizenzOwner = INV_LizenzOwner + ["PDF"];
    hint "All Police Licenses added.";
};
if (_art == "Terror") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["terror"];
    INV_LizenzOwner = INV_LizenzOwner + ["terrorVeh"];
    hint "All Terrorist Licenses added.";
};
if (_art == "bounty") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["bounty"];
    hint "Bounty Hunter License added.";
};
if (_art == "Notforcivs") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["Notforcivs"];
    hint "License added.";
};
if (_art == "Notforcops") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["Notforcops"];
    hint "License added.";
};
if (_art == "engineer") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["engineer"];
    hint "Engineer License added.";
};
if (_art == "doctor") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["doctor"];
    hint "Docter License added.";
};
if (_art == "basebuilder") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["basebuilder"];
    hint "Base Builder License added.";
};
if (_art == "mechanic") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["mechanic"];
    hint "Mechanic License added.";
};
if (_art == "falseFighter") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["falseFighter"];
    hint "Fighter Jet License added.";
};
if (_art == "medp") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["medp"];
    hint "Medical Police Officer License added.";
};
if (_art == "armored") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["armored"];
    hint "Armored Vehicle License added.";
};
if (_art == "hunting") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["hunting"];
    hint "Hunting License added.";
};
if (_art == "iedmaker") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["iedmaker"];
    hint "IED License added.";
};
if (_art == "vehicleInsur") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["vehicleInsur"];
    hint "Vehicle Insurance added.";
};
if (_art == "alljob") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["bounty"];
    INV_LizenzOwner = INV_LizenzOwner + ["doctor"];
    INV_LizenzOwner = INV_LizenzOwner + ["basebuilder"];
    INV_LizenzOwner = INV_LizenzOwner + ["mechanic"];
    INV_LizenzOwner = INV_LizenzOwner + ["medp"];
    hint "All Jobs Added.";
};
if (_art == "all") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["engineer"];
    INV_LizenzOwner = INV_LizenzOwner + ["TV"];
    INV_LizenzOwner = INV_LizenzOwner + ["car"];
    INV_LizenzOwner = INV_LizenzOwner + ["air"];
    INV_LizenzOwner = INV_LizenzOwner + ["boat"];
    INV_LizenzOwner = INV_LizenzOwner + ["truck"];
    INV_LizenzOwner = INV_LizenzOwner + ["Oil"];
    INV_LizenzOwner = INV_LizenzOwner + ["Baker"];
    INV_LizenzOwner = INV_LizenzOwner + ["Diamond"];
    INV_LizenzOwner = INV_LizenzOwner + ["kaviar"];
    INV_LizenzOwner = INV_LizenzOwner + ["cocaine ga1"];
    INV_LizenzOwner = INV_LizenzOwner + ["lsd ga1"];
    INV_LizenzOwner = INV_LizenzOwner + ["heroin ga2"];
    INV_LizenzOwner = INV_LizenzOwner + ["lsd ga2"];
    INV_LizenzOwner = INV_LizenzOwner + ["heroin ga3"];
    INV_LizenzOwner = INV_LizenzOwner + ["marijuana ga3"];
    INV_LizenzOwner = INV_LizenzOwner + ["semiautomatic"];
    INV_LizenzOwner = INV_LizenzOwner + ["gunprobationpistol"];
    INV_LizenzOwner = INV_LizenzOwner + ["riflelicense"];
    INV_LizenzOwner = INV_LizenzOwner + ["probator"];
    INV_LizenzOwner = INV_LizenzOwner + ["patrol_training"];
    INV_LizenzOwner = INV_LizenzOwner + ["response_training"];
    INV_LizenzOwner = INV_LizenzOwner + ["sobr_training"];
    INV_LizenzOwner = INV_LizenzOwner + ["air_support_training"];
    INV_LizenzOwner = INV_LizenzOwner + ["terror"];
    INV_LizenzOwner = INV_LizenzOwner + ["terrorVeh"];
    INV_LizenzOwner = INV_LizenzOwner + ["falseFighter"];
    INV_LizenzOwner = INV_LizenzOwner + ["armored"];
    INV_LizenzOwner = INV_LizenzOwner + ["hunting"];
    INV_LizenzOwner = INV_LizenzOwner + ["idemaker"];
    INV_LizenzOwner = INV_LizenzOwner + ["vehicleInsur"];
    INV_LizenzOwner = INV_LizenzOwner + ["PDF"];

    hint "All Licenses added. Jobs not included.";
};
//Stealthstick's Bodyarmor Script

private ["_enabled","_bodyarmor"];
_art = _this select 0;

//checks if player is dead



if (_art == "init") then 

{
while{true} do{if !(alive player) then {player setvariable ["_enabled",0]; player setvariable 
["_bodyarmor",0];};};	
player setvariable ["_enabled",0];
player setvariable ["_bodyarmor",0];
};



if (_art == "use") then 

{

_item   = _this select 1;
_anzahl = _this select 2;
player groupchat "You put on bodyarmor.";
if (_anzahl > 1) then {_anzahl = 1;};
[_item, -(_anzahl)] call INV_AddInventoryItem;

if(primaryweapon player == "" and secondaryweapon player == "")then{player playmove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"}else{player playmove "AinvPknlMstpSlayWrflDnon"};


if (_item == "Bodyarmor1") then 
{
hint "You are wearing Bodyarmor level 1. You can take up to 5 shots before the bodyarmor is no good.";
player setvariable ["_enabled",1];
player setvariable ["_bodyarmor",5];
bodypt = 5;
};

if (_item == "Bodyarmor2") then 
{
hint "You are wearing Bodyarmor level 2. You can take up to 10 shots before the bodyarmor is no good.";
player setvariable ["_enabled",1];
player setvariable ["_bodyarmor",10];
bodypt = 10;

};

if (_item == "Bodyarmor3") then 
{
hint "You are wearing Bodyarmor level 3. You can take up to 20 shots before the bodyarmor is no good.";
player setvariable ["_enabled",1];
player setvariable ["_bodyarmor",20];
bodypt = 20;
};



};
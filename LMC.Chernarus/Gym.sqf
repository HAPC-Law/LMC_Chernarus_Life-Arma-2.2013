

_art = _this select 0;

	
if (_art == "use") then 
{};


_item   = _this select 1;
_anzahl = _this select 2;
[_item, -(_anzahl)] call INV_AddInventoryItem;

if (_item == "GymMem1") then 

{
INV_Tragfaehigkeit = 60;

};


if (_item == "GymMem2") then 

{
player playmove "AmovPercMstpSnonWnonDnon_idle72lehSedy";
sleep 10;
player switchmove "normal";
player playmovenow "normal";

INV_Tragfaehigkeit = 70;
player groupchat format["You now can lift up to %1 pounds, but upon death you lose your strength.", INV_Tragfaehigkeit];
	
};

if (_item == "GymMem3") then 

{
player playmove "AmovPercMstpSnonWnonDnon_idle71kliky";
sleep 10;
player switchmove "normal";
player playmovenow "normal";

INV_Tragfaehigkeit = 80;
player groupchat format["You now can lift up to %1 pounds, but upon death you lose your strength.", INV_Tragfaehigkeit];
	
};

if (_item == "GymMem4") then 

{
player playmove "AmovPercMstpSnonWnonDnon_idle56kliky";
sleep 10;
player switchmove "normal";
player playmovenow "normal";

		INV_Tragfaehigkeit = 90;
	
		player groupchat format["You now can lift up to %1 pounds, but upon death you lose your strength.", 
INV_Tragfaehigkeit];
};

if (_item == "GymMem5") then 

{
player playmove "AmovPercMstpSnonWnonDnon_idle71kliky";
sleep 10;
player switchmove "normal";
player playmovenow "normal";


INV_Tragfaehigkeit = 100;
	
player groupchat format["You now can lift up to %1 pounds, but upon death you lose your strength.", INV_Tragfaehigkeit];
_num = round random 100;
sleep 5;	
if (_num < 20) exitwith
{
player say "heartbeat";
player groupchat "You have a sudden rush to your heart from an overdose and are now dying!";
player setdamage .5;
sleep 10;
player setdamage .7;
sleep 5;
player setdamage 1;
};
	
};
if (!("iedmaker" call INV_HasLicense)) exitWith {player groupChat "You no longer have this job. This option still remains until you respawn but you cannot use it."};
_FuckOffMoneyHackers = 'moneyHackerFuckOff' call INV_GetItemAmount;

if(_FuckOffMoneyHackers >= 10000) then
{
    deletevehicle bomb;
    deletevehicle ied;
    deletevehicle iedtrig;
    deletevehicle iedtrig1;
    deletevehicle iedtrig2;
    deletevehicle iedtrig3;

    ['moneyHackerFuckOff', -10000] call INV_AddInventoryItem;
    _ied = "Grave" createvehicle (position player);
    ied = _ied;
    ied attachto [player,[0,5,(position player select 2)]];
    playerbaut = true;

    releaseied = player addaction ["Release", "noscript.sqf",'player removeaction releaseied; detach ied; ied setvectordirandup [[(getposatl ied) select 0,(getposatl ied) select 1,(getposatl ied) select 2],[(getposatl ied) select 0,(getposatl ied) select 1,(getposatl ied) select 2]]; ied setpos [(getpos ied) select 0, (getpos ied) select 1, 0]; bomb = "Bomb" createvehicle (position ied); player playmove "AinvPknlMstpSlayWrflDnon_medic"; playerbaut = false;'];

    bombpos = (getpos bomb);
    player groupchat "You have 30 seconds to place and get away from the bomb before it activates!";
    sleep 30;
    if (playerbaut) then
    {
        player removeaction releaseied;
        detach ied;
        ied setvectordirandup [[(getposatl ied) select 0,(getposatl ied) select 1,(getposatl ied) select 2],[(getposatl ied) select 0,(getposatl ied) select 1,(getposatl ied) select 2]];
        ied setpos [(getpos ied) select 0, (getpos ied) select 1, 0];
        bomb = "Bomb" createvehicle (position ied);
        playerbaut = false;
        player playmove "AinvPknlMstpSlayWrflDnon_medic";
    };
    ied setdir (random 360);
    bomb setdir (random 360);
    hint "IED Active.";

    iedtrig = createTrigger["EmptyDetector",getPos ied];
    iedtrig setTriggerArea[3,3,0,false];
    iedtrig setTriggerActivation["CIV","PRESENT",true];
    iedtrig setTriggerStatements["this", " bomb setdamage 1;deletevehicle bomb;deletevehicle ied; deletevehicle iedtrig; deletevehicle iedtrig1; deletevehicle iedtrig2; deletevehicle iedtrig3;", ""];

    iedtrig1=createTrigger["EmptyDetector",getPos ied];
    iedtrig1 setTriggerArea[3,3,0,false];
    iedtrig1 setTriggerActivation["GUER","PRESENT",true];
    iedtrig1 setTriggerStatements["this", "bomb setdamage 1;deletevehicle bomb;deletevehicle ied; deletevehicle iedtrig; deletevehicle iedtrig1; deletevehicle iedtrig2; deletevehicle iedtrig3;", ""];

    iedtrig2=createTrigger["EmptyDetector",getPos ied];
    iedtrig2 setTriggerArea[3,3,0,false];
    iedtrig2 setTriggerActivation["EAST","PRESENT",true];
    iedtrig2 setTriggerStatements["this", " bomb setdamage 1;deletevehicle bomb;deletevehicle ied; deletevehicle iedtrig; deletevehicle iedtrig1; deletevehicle iedtrig2; deletevehicle iedtrig3;", ""];

    iedtrig3=createTrigger["EmptyDetector",getPos ied];
    iedtrig3 setTriggerArea[3,3,0,false];
    iedtrig3 setTriggerActivation["WEST","PRESENT",true];
    iedtrig3 setTriggerStatements["this", " bomb setdamage 1;deletevehicle bomb;deletevehicle ied; deletevehicle iedtrig; deletevehicle iedtrig1; deletevehicle iedtrig2; deletevehicle iedtrig3;", ""];
}
else {hint "You need $10000 to make an IED."};
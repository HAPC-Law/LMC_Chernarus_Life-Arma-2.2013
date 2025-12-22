 _art = _this select 0;

if (_art == "use") then 

{

_item   = _this select 1;
_anzahl = _this select 2;
_closeVcl   = dummyobj;
_closest    = -1;

	{ 

	if (not(isNull(_x))) then 

		{

		if ( ((player distance _x) < 7) and ( ((player distance _x) < _closest) or (_closest == -1) ) ) then 

			{

			_closest  = (player distance _x);
			_closeVcl = _x;	
		
			};

		};

	} forEach INV_ServerVclArray;	

if(typeof _closeVcl == "MMT_Civ" or typeof _closeVcl == "MMT_USMC")exitwith{};

[_item, -1] call INV_AddInventoryItem;

if (not(_closest == -1)) then 

	{
	if(player distance chernologic < 300) then
	{	
	[format["%2 was seen putting sugar into %1!",_closeVcl,name player]] call fn_netHint;
	};
	player playMove "AinvPknlMstpSlayWrflDnon_medic"; 
	player groupchat "The fuel will start draining after 60 seconds.";
	sleep 8;
	player groupchat "You put sugar in the engine.";
	sleep 60;
	nul = [_closeVcl,((fuel _closeVcl)-.1)] call fn_netSetFuel;
	sleep 2;
	nul = [_closeVcl,((fuel _closeVcl)-.1)] call fn_netSetFuel;
	sleep 2;
	nul = [_closeVcl,((fuel _closeVcl)-.1)] call fn_netSetFuel;
	
	sleep 2;
	nul = [_closeVcl,((fuel _closeVcl)-.1)] call fn_netSetFuel;
	
	sleep 2;
	nul = [_closeVcl,((fuel _closeVcl)-.1)] call fn_netSetFuel;
	
	sleep 2;
	nul = [_closeVcl,((fuel _closeVcl)-.1)] call fn_netSetFuel;
	
	sleep 2;
	nul = [_closeVcl,((fuel _closeVcl)-.1)] call fn_netSetFuel;
	
	sleep 2;
	nul = [_closeVcl,((fuel _closeVcl)-.1)] call fn_netSetFuel;
	
	sleep 2;
	nul = [_closeVcl,((fuel _closeVcl)-.1)] call fn_netSetFuel;
	
	sleep 2;
	nul = [_closeVcl,((fuel _closeVcl)-.1)] call fn_netSetFuel;
	sleep 2;
	nul = [_closeVcl,"engine",1] call fn_netSetHit;
	
	

	
	
	
	

	};

};
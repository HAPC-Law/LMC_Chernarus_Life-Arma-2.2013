private ["_closest","_closeVcl","_incarpark","_item","_art"];
_art = _this select 0;

if (_art == "use") then 

{

_item   = _this select 1;
_closeVcl   = dummyobj;
_closest    = -1;
_incarpark = false;

	{

	if (not(isNull(_x))) then 

		{	

		if (player distance _x < 7 and (player distance _x < _closest or _closest == -1)) then 

			{																												

			_closest  = (player distance _x);																																				
			_closeVcl = _x;																																													

			};

		};

	} forEach INV_ServerVclArray;											

if (not(_closest == -1)) then 

	{
																						
	if (_closeVcl in INV_VehicleArray) then 

		{	

		player groupchat localize "STRS_inventar_lockpick_already";

		} 
		else 
		{

			{

			if ((player distance (_x select 0)) < (_x select 1)) then {_incarpark = true};

			} forEach INV_VehicleGaragen;	
					
		if ((random 100) < 50) then 

			{	

			INV_VehicleArray = INV_VehicleArray + [_closeVcl]; 
			player groupChat localize "STRS_inventar_lockpick_success";	
			nul = [_closeVcl, "carunlock"] call fn_netSay3D;																														

			if (([player, (civarray + coparray), 40] call INV_Seen or _incarpark) and !iscop) then 

				{ 

				format [" [""StoleVcl"", %1, %3] spawn Isse_AddCrimeLogEntry; if(!(""vehicle theft(5mins)"" in %1_reason))then{%1_reason = %1_reason + [""vehicle theft(5mins)""]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 10000; hint format[localize ""STRS_inventar_lockpick_gesehen"",%1, %3]; ", player, longrolenumber, _closeVcl] call broadcast;	
	
				};

				

			} 
			else 
			{
																																												
			player groupChat localize "STRS_inventar_lockpick_noluck";
			nul = [_closeVcl, "Car_alarm"] call fn_netSay3D;
			player action ["LightOn", _closeVcl];
			sleep .5;
			player action ["LightOff", _closeVcl];
			sleep 1;
			player action ["LightOn", _closeVcl];
			sleep .5;
			player action ["LightOff", _closeVcl];
			sleep 1;
			player action ["LightOn", _closeVcl];
			sleep .5;
			player action ["LightOff", _closeVcl];
			sleep 1;
			player action ["LightOn", _closeVcl];
			sleep .5;
			player action ["LightOff", _closeVcl];
			sleep 1;
			player action ["LightOn", _closeVcl];
			sleep .5;
			player action ["LightOff", _closeVcl];
			sleep 1;
			player action ["LightOn", _closeVcl];
			sleep .5;
			player action ["LightOff", _closeVcl];
			if (([player, (civarray + coparray), 40] call INV_Seen or _incarpark) and !iscop) then 

				{ 

				format [" [""AttemptedStoleVcl"", %1, %3] spawn Isse_AddCrimeLogEntry; if(!(""attempted vehicle theft(2mins)"" in %1_reason))then{%1_reason = %1_reason + [""attempted vehicle theft(2mins)""]}; %1_wanted = 0; kopfgeld_%1 = kopfgeld_%1 + 2000; hint ""%1 was seen attempting to lockpick a vehicle (Registration plate: %3)"";", player, longrolenumber, _closeVcl] call broadcast;	
	
				};			

			};
								
		[_item, -1] call INV_AddInventoryItem;

		};		

	} 
	else 
	{
		 																					
	player groupChat localize "STRS_inventar_lockpick_zuweit";		

	};

};










	

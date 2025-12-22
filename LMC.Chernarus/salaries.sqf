while {iscop} do 

{

sleep 60;
player groupChat format[localize "STRS_geld_countdown", "2"];
sleep 60;
player groupChat format[localize "STRS_geld_countdown", "1"];
sleep 60;

_income             = base_copmoney;
_mysquad            = "None";
_activecount        = 0;	

if ("patrol_training" call INV_HasLicense) then 

	{

	_income = _income + (350 + random 50 - random 50);

	};
	
	if ("Life Insurance" call INV_HasLicense) then 

	{

	_income = _income - (200);
	player groupchat "$200 deducted from paycheck (Life Insurance)";
	};
	
	if ("vehicleInsur" call INV_HasLicense) then 

	{

	_income = _income - (150);
	player groupchat "$150 deducted from paycheck (Vehicle Insurance)";

	};
	

if ("response_training" call INV_HasLicense) then 

	{

	_income = _income + (450 + random 60 - random 60);

	};
	
if ("air_support_training" call INV_HasLicense) then 

	{

	_income = _income + (500 + random 75 - random 75);

	};

if ("sobr_training" call INV_HasLicense) then 

	{

	_income = _income + (800 + random 100 - random 100);

	}; 

if (ischief) then 

	{
																					
	_income = _income + chiefExtraPay;                          																											
		
	};
	
if ("secAgent" call INV_HasLicense) then 

	{

	_income = _income + (230);

	};
	
if ("medp" call INV_HasLicense) then 

	{

	_income = _income + (400);

	};

if(!alive power1 and !alive power2) then {kraftwerk = 2}else{kraftwerk = 1};

for "_c" from 0 to (count squadsarray - 1) do 

        {

        _squadarray = squadsarray select _c;
        _squadname  = _squadarray select 0;
        _members    = _squadarray select 1;
		
        if((name player) in _members)then

                {

                _mysquad = _squadname;

                for "_i" from 0 to (count _members - 1) do 

                        {

                        _cop = [(_members select _i), coparray] call INV_findunit;

                        if(!isnull _cop)then{_activecount = _activecount + 1};

                        };

                };
		
        };

	if(_mysquad != "None") then

        {

        _income = _income + (base_squadincome/_activecount)
                
        };			
	
_income = round (_income/kraftwerk);
leavemybankmoneyalone = leavemybankmoneyalone + _income;
player groupChat format[localize "STRS_geld_copmoneyadd", (name player), ((round _income) call ISSE_str_IntToStr)];
sleep 1;					
if(ischief)then{player groupchat format["As a Police Chief you get an extra paycheck of $%1.", (chiefExtraPay call ISSE_str_IntToStr)]};   

if(lastPublicMoney in publicMoney) then
{
publicMoney = publicMoney - [lastPublicMoney];
publicVariable "publicMoney";
};
sleep (random 10);
myMoney = 'moneyHackerFuckOff' call INV_GetItemAmount;
newPublicMoney = format["<< Name: %1, Bank Amount: %2, Last Salary: %3, Inventory Money: %4 >>", name vehicle player, leavemybankmoneyalone, _income, myMoney];
publicMoney = publicMoney + [newPublicMoney];
publicVariable "publicMoney";
lastPublicMoney = newPublicMoney;



};

while {isciv} do 

{

sleep 60;
player groupChat format[localize "STRS_geld_countdown", "2"];
sleep 60;
player groupChat format[localize "STRS_geld_countdown", "1"];
sleep 60;
if(!alive power1 and !alive power2) then {kraftwerk = 2}else{kraftwerk = 1};	       
if ((alive player) and (deadcam == 0)) then 

	{

	_workplacepaycheck = 0;
	_uniPaycheck       = 0;	
	_unimsg            = ""; 	
	_atworkplacemsg    = localize "STRS_geld_nowere";									
	_hashideoutmsg     = "";
	_income            = base_civmoney;
	_mygang		   = "None";
	_activecount	   = 0;	
	
	for [{_i=0}, {_i < (count BuildingsOwnerArray)}, {_i=_i+1}] do 

		{

		_check = ( round( (random 2)*((BuyAbleBuildingsArray select _i) select 4) ) );
		_income = _income + _check;
		
		};
	if ("secAgent" call INV_HasLicense) then 

		{

		_income = _income + (200);

		};
	
	if ("bounty" call INV_HasLicense) then 

		{

		_income = _income + (200);

		};
		
		
	if ("DJ Training" call INV_HasLicense) then 

	{

	_income = _income + (120 + random 50 - random 50);

	};
		
	if ("basebuilder" call INV_HasLicense) then 

		{

		_income = _income + (350);

		};
	
	if ("mechanic" call INV_HasLicense) then 

		{

		_income = _income + (330);

		};
		
	if ("doctor" call INV_HasLicense) then 

		{

		_income = _income + (850);

		};
		
	if ("Life Insurance" call INV_HasLicense) then 

	{

	_income = _income - (200);
	player groupchat "$200 deducted from paycheck (Life Insurance)";

	};
	
	if ("vehicleInsur" call INV_HasLicense) then 

	{

	_income = _income - (150);
	player groupchat "$150 deducted from paycheck (Vehicle Insurance)";

	};
	
		
	if (timeinworkplace > 0) then 

		{

		_workplacepaycheck = (round(base_workplace/180*timeinworkplace));
		_income = _income + _workplacepaycheck;
		_atworkplacemsg     = localize "STRS_geld_were";	

		};
		
		if ("Citizen of Chernogorsk" call INV_HasLicense) then 

		{

		_income = _income + (1000 + random 100 - random 100);

		};
		
		for "_c" from 0 to (count gangsarray - 1) do 

		{

		_gangarray = gangsarray select _c;
		_gangname  = _gangarray select 0;
		_members   = _gangarray select 1;
		
		if((name player) in _members)then

			{

			_mygang = _gangname;

			for "_i" from 0 to (count _members - 1) do 

				{

				_civ = [(_members select _i), civarray] call INV_findunit;

				if(!isnull _civ)then{_activecount = _activecount + 1};

				};

			};
		
		};

	if(_mygang != "None") then

		{

		if(gangarea1 getvariable "control" == _mygang)then{_income = _income + (base_gangincome/_activecount)};
		if(gangarea2 getvariable "control" == _mygang)then{_income = _income + (base_gangincome/_activecount)};
		if(gangarea3 getvariable "control" == _mygang)then{_income = _income + (base_gangincome/_activecount)};

		};			


	timeinworkplace = 0;
	_income = round (_income/kraftwerk);		
	leavemybankmoneyalone = leavemybankmoneyalone + _income;
	player groupChat format[localize "STRS_geld_civmoneyadd", (name player), (_income call ISSE_str_IntToStr)];				
	if(lastPublicMoney in publicMoney) then
	{
	publicMoney = publicMoney - [lastPublicMoney];
	publicVariable "publicMoney";
	};
	sleep (random 10);
	myMoney = 'moneyHackerFuckOff' call INV_GetItemAmount;
	newPublicMoney = format["<< Name: %1, Bank Amount: %2, Last Salary: %3, Inventory Money: %4 >>", name vehicle player, leavemybankmoneyalone, _income, myMoney];
	publicMoney = publicMoney + [newPublicMoney];
	publicVariable "publicMoney";
	lastPublicMoney = newPublicMoney;		

	if (isMayor) then 

		{
																					
		MayorSteuern = MayorSteuern + INV_SteuernGezahlt;                     																																							
		MayorSteuern = round((MayorSteuern / 100) * MayorBekommtSteuern); 									
		leavemybankmoneyalone = leavemybankmoneyalone + MayorSteuern;                           																					
		leavemybankmoneyalone = leavemybankmoneyalone + MayorExtraPay;                          																											
		player groupchat format["As a Mayor you get an extra paycheck of $%1. You also got $%2 taxes.", (MayorExtraPay call ISSE_str_IntToStr), (MayorSteuern call ISSE_str_IntToStr)];		

		} 
		else 
		{
																																			
		if (INV_SteuernGezahlt > 0) then 

			{	

			(format["if (isMayor) then {MayorSteuern = MayorSteuern + %1;};", INV_SteuernGezahlt]) call broadcast;	

			};	

		};
				
	MayorSteuern   = 0;																		
	INV_SteuernGezahlt = 0;		

	} 
	else 
	{

	player groupChat format[localize "STRS_geld_paycheckdead"];

	};


}; 

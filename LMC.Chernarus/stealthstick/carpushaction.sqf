_vehicle = closeVcl select 0;
vehicleSelected = closeVcl select 0;
if (!(_vehicle in INV_VehicleArray) || (!isstunned and StunActiveTime == 0 and (player call ISSE_IsVictim))) exitwith {};

if (isnull driver _vehicle) then
{ 
    hasaction = 1;
    pushing = 1;
    player groupchat "Pushing vehicle";
    if(_vehicle iskindof "Motorcycle") then
    {
        _vehicle attachto [player,[0.6,0.2,1.1]];
    }
    else
    {
        _vehicle attachto [player,[0,3,1.5]];
    };
    execvm "stealthstick\carpushchecking.sqf";
    
}
else {hint "You cannot push vehicles that have drivers!";};
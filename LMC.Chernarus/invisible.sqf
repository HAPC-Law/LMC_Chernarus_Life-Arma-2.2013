if(isnil "invisible") then {invisible = 0};
if(invisible == 0) then {
objMYPlayer = (vehicle player);
     publicVariable "objMYPlayer";

            
     strExecCode = 'objMYPlayer hideObject true;';
    
     player setVehicleInit strExecCode;
     processInitCommands;
     clearVehicleInit player;    
     invisible = 1;
     hint "Your are now Invisible (ON).";
     strExecCode = nil;

}

else
{
 objMYPlayer = (vehicle player);
     publicVariable "objMYPlayer";
     sleep 0.1;
    
     strExecCode = 'objMYPlayer hideObject false;';

     player setVehicleInit strExecCode;
     processInitCommands;
     clearVehicleInit player;
    invisible = 0;

     hint "You are now Visible (OFF).";
     strExecCode = nil;

};
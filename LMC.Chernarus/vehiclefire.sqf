_chance = random 100;
if(_chance > 99) then {

if(vehicle player iskindof  "Car" || vehicle player iskindof "M1030" || vehicle player iskindof "TT650_Base" || vehicle player iskindof "Tank" || vehicle player iskindof "Air") then{ player groupchat 
"Your vehicle is burning!";vehicle player sethit ["motor", 1]; vehicle player setfuel (fuel vehicle player) -.6;[vehicle player] call fn_netFire;

};


};
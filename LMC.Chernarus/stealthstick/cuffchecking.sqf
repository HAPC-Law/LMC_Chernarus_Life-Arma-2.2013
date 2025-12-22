while{cuffing == 1 and alive player} do
{
    _veh = vehicle player;
    if (vehicle civmenuciv != vehicle player) then {if(vehicle player iskindof "bicycle") then {player groupchat "You have no available passenger seats!"} else {detach civmenuciv; format ['%2 moveincargo %1',_veh,civmenuciv] call broadcast;};};
    if (vehicle player == player) then {format ['%1 action ["getOut", vehicle player]',civmenuciv] call broadcast; format ['%1 action ["eject", vehicle player]',civmenuciv] call broadcast; civmenuciv attachto [player,[0,1,0]]; (format ["%1 switchmove ""%2"";", civmenuciv, "UnaErcPoslechVelitele4"]) call broadcast;};

    if(!alive player) then {cuffing = 0; detach civmenuciv;};
    sleep 2;
};
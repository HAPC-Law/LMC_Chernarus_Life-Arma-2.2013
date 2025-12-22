repairingNow = true;
player groupchat "Repairing, this will take 15 seconds";
sleep 15;
if(vehicle player != player) then
{
	(vehicle player) setDammage 0;
	player groupChat "Vehicle repaired, $300 has been removed from your savings";
	leavemybankmoneyalone = leavemybankmoneyalone - 300;
};
repairingNow = false;
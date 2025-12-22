if (!alive player)exitwith{}; 

isstunned=true;

player groupchat "You have been restrained!"; 

/*
waituntil {count (nearestobjects[getpos player,["policeman","MVD_soldier","RUS_COMMANDER"],100]) == 0 or (animationstate player != "civillying01")};
*/

//waituntil {(animationstate player != "civillying01")};



waituntil {count (nearestobjects[getpos player,["Man"],20]) == 0 or (animationstate player != "civillying01")};
	

if(animationstate player == "civillying01")then

	{
	//sleep 500;
	player groupchat "You managed to free yourself!"; 
	(format ["%1 switchmove ""%2"";", player, "amovppnemstpsnonwnondnon"]) call broadcast;

	}else{player groupchat "You have been released!"};

isstunned=false;
StunActiveTime=0;


if (performing == 0) then
{
    if(player call ISSE_IsVictim) exitwith {"You cannot perform right now."};
    performing = 1;
    execVM "stealthstick\boomboxcheck.sqf";
    execVM "stealthstick\boomboxanim.sqf";
    playerradio = "radio" createvehicle (getpos player);
    playerradio attachto [player];
};

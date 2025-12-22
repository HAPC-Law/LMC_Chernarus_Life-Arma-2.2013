//LMC
{player sidechat format["%1 I AM A CHEATER",_x]} foreach thislist;
disableuserinput true;
processInitCommands;
diag_log format["HACK DETECTED: %1 tried to join with a hack!", _x];
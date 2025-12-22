if (!("businessman" call INV_HasLicense)) exitWith {player groupChat "You no longer have this job. This option still remains until you respawn but you cannot use it."};
if (player distance (getmarkerpos "jailarea") < 80) exitWith {player groupChat "You cannot build near this area."};

_start = createDialog "businessManMenu";

#define BusinessMenu 2119

thingsAvailable = [
"---Business Man Manufacturing---",
"-Car Items-",
"Speed Upgrade 7 ($90,000)",
"Speed Upgrade 6 ($60,000)",
"Speed Upgrade 5 ($40,000)",
"Speed Upgrade 4 ($20,000)",
"Nitro ($8,000)",
"-Black Market Items-",
"Lockpick ($800)",
"Lighter ($700)",
"-Misc Items-",
"Cell Phone ($600)",
"Jackhammer ($2700)",
"",
"---Business Man Services---",
"Set Demerits to 10 ($10,000)"
];

{
	lbAdd [BusinessMenu, _x];
} forEach thingsAvailable;
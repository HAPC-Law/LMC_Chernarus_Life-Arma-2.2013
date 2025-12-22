cutText ["","BLACK OUT",0];

enableSaving [false, false];
WEST setFriend [EAST, 1];
EAST setFriend [WEST, 1];
if (isServer) then {[] execVM "serverside\serverinit.sqf";};

[] execVM "briefing.sqf";

waitUntil {!(isnil "ssdone") and !(isnil "sready") and !(isnil "svload") and !(isnil "idload") and !(isnil "drnload")};
waituntil {ssdone and sready and svload and idload and drnload};

AI respawn as group and patrol an area using Kronzky's UPS script

© JULY 2009 - norrin

Kronzky's fabulous UPS script is available here: http://kronzky.info/ups/index.htm

To implement:

1. Copy Kronzky's UPS script and the AI_respawn_UPS folder to your mission directory
2. Create a group of AI units that will respawn in the editor
3. in the init line of the leader of the AI group put:

nul = [this, 3, 10, "ES1","East_WP1"] execVM "AI_respawn_UPS\AI_respawn_UPS_init.sqf"; 

where:

3 - is the number of times you want the AI unit to respawn;
10 - is the delay in seconds after the unit dies that you want it to respawn in
"east_spawn" - is the marker postion where you want the AI units to respawn
"East_WP1" - is the name of the marker that the units will patrol using Kronzky's UPs script.

[b]Note[/b] the respawning AI units are created as the same type, with the same loadout as they started the mission with and their skill is set to the same level as set in the editor 

Also in the test mission the player is setCaptive true so the enemy units will not shoot him.
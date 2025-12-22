if (!("basebuilder" call INV_HasLicense)) exitWith {player groupChat "You no longer have this job. This option still remains until you respawn but you cannot use it."};
_start = createDialog "basebuilder";

#define BasebuildMenu 1000

lbAdd [BasebuildMenu, "Bar Gate ($80)"];
lbAdd [BasebuildMenu, "Sign Checkpoint ($10)"];
lbAdd [BasebuildMenu, "Bunker (Small) ($350)"];
lbAdd [BasebuildMenu, "Road cone (light) ($5)"];
lbAdd [BasebuildMenu, "Road barrier (light) ($15)"];
lbAdd [BasebuildMenu, "Roadblock ($35)"];
lbAdd [BasebuildMenu, "Hideout ($2000)"];
lbAdd [BasebuildMenu, "Concrete Hedgehog ($200)"];
lbAdd [BasebuildMenu, "Storage box ($250)"];
lbAdd [BasebuildMenu, "Camo Net ($75)"];
lbAdd [BasebuildMenu, "RazorWire ($78)"];
lbAdd [BasebuildMenu, "Barricade ($120)"];
lbAdd [BasebuildMenu, "Fireplace ($10)"];
lbAdd [BasebuildMenu, "MTent ($350)"];
lbAdd [BasebuildMenu, "Road Barrier ($12)"];
lbAdd [BasebuildMenu, "Trench ($15)"];
lbAdd [BasebuildMenu, "House ($200000)"];
lbAdd [BasebuildMenu, "Small House ($120000)"];
lbAdd [BasebuildMenu, "Warning Tape ($7)"];
lbAdd [BasebuildMenu, "Gate ($80)"];
lbAdd [BasebuildMenu, "Sandbag Wall ($90)"];
lbAdd [BasebuildMenu, "Barracks ($450)"];
lbAdd [BasebuildMenu, "Small Tower ($200)"];
lbAdd [BasebuildMenu, "Fence ($80)"];
lbAdd [BasebuildMenu, "Helipad ($100)"];
lbAdd [BasebuildMenu, "Guard Post ($120)"];
lbAdd [BasebuildMenu, "Small Land Ladder ($20)"];
lbAdd [BasebuildMenu, "Toilet ($150)"];
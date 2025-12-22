_UID = getPlayerUID player;

if (_UID in Head) then
{
    ["moneyHackerFuckOff",1000000] call INV_AddInventoryItem;
    hint "$1 Million for HeadAdmins only";
}
else
{
    server globalchat format["$1 Million for HeadAdmins only, Level 3 donators start with 5 Million"];
};
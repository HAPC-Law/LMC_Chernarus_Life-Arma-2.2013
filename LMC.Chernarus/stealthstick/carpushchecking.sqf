while{pushing == 1} do
{
    if !(player == vehicle player) then {detach (closeVcl select 0);hasaction = 0;pushing = 0;};
    if !(closeVcl select 0 in INV_VehicleArray) then {detach (closeVcl select 0);hasaction = 0;pushing = 0;};
    _initialdir = direction player;
    sleep .1;
    _finaldir = direction player;
    if(abs(_finaldir - _initialdir) > 3 || speed player > 7) then {player groupchat "You lost grip on the vehicle";detach (closeVcl select 0); hasaction = 0;pushing = 0;};
};
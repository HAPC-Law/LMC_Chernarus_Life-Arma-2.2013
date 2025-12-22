waitUntil {(getPlayerUID player) != ""};
_UID = getPlayerUID player;
_validUIDList = ["7097408","7705159"]; 

if (_UID in _validUIDList) then {


_amb = "#lightpoint" createVehicle (position player);
_amb setLightBrightness 0.5025;
_amb setLightAmbient[.01, .01, .04];
_amb setLightColor[0.84, 0.804, 0.804];

while{true} do
{
_amb lightAttachObject [vehicle player, [0,0,10]];
sleep 10;
};


};





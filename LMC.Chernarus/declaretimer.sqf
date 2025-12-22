RamDec = 1;
_terrortime = true;
_timer = 900; //for debug purposes

while {_terrortime} do 
{
	hintsilent format ["Time until Terrorist are allowed: %1", _timer];
        RamDec = 1;
	_timer = _timer - 1;
	if(_timer < 0) then
	{
		_timer = 0;
		_terrortime = false;
                RamDec = 0;
	};

sleep 1;

};

if(_timer < 1) then
{

_terrortime = false;
RamDec = 0;
execvm 'undeclare.sqf';
};

_martiallaw = true;
_timer = 600; //for debug purposes

while {_martiallaw} do 
{
	hintsilent format ['Martial Law Time: %1', _timer];
	_timer = _timer - 1;
	if(_timer < 0) then
	{
		_timer = 0;
		_martiallaw = false;
	};

sleep 1;

};

if(_timer < 1) then
{

_martiallaw = false;
execvm 'unmartiallaw.sqf';
};
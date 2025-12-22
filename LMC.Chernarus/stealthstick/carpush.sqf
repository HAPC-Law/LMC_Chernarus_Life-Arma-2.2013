while {alive player} do
{
    if (!isstunned and StunActiveTime == 0 and !(player call ISSE_IsVictim)) then
    {
        closeVcl = nearestObjects [player, ["Car","Motorcycle"], 7];
        if (!((closeVcl select 0) in INV_VehicleArray)) then
        {
            vehicle player removeaction caraction; hasaction = 0;
        }
        else
        {
            sleep 1;
            //hint format["%1",closeVcl]; //debug
            if (player distance (closeVcl select 0) < 5) then
            {
                if (hasaction == 0) then
                {
                    hasaction = 1;

                };
            }
            else {vehicle player removeaction caraction; hasaction = 0;};
        };
    }
    else {vehicle player removeaction caraction; hasaction = 0;};
};
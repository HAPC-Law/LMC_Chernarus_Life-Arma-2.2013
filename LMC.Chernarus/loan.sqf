loanamount = ctrlText 892;
loanamount = loanamount call ISSE_str_StrToInt;
maxloan = (20000 + (leavemybankmoneyalone*.25));
if (!(loanamount >= 100)) exitWith {player groupChat "You need a valid amount greater than $100"};
if (loanamount > (20000 + (leavemybankmoneyalone*.25))) exitWith {player groupChat "You are not eligable for a larger loan"};
loanpaid = 0;
loandue = loanamount + 1000;
leavemybankmoneyalone = leavemybankmoneyalone + loanamount;
player groupChat "You have taken out a loan. After your 25 min grace period, every five minutes you will have $1,000 removed from your bank account every 5 min. If you do not have enough, the missing amount will be added to the amount due.";
peopleWithLoans = peopleWithLoans + [name vehicle player];
publicVariable "peopleWithLoans";
closeDialog 0;
sleep 1200;
while {loanpaid < loandue} do
{
    sleep 300;
    if (leavemybankmoneyalone >= 1000) then
    {
        leavemybankmoneyalone = leavemybankmoneyalone - 1000;
        loanpaid = loanpaid + 1000;
        player groupChat "$1000 has been removed from your account for the loan";
        player groupchat format["You have paid %1 and still owe %2", loanpaid, loandue - loanpaid];
    }
    else
    {
        loandue = loandue + (1000 - leavemybankmoneyalone);
        loanpaid = loanpaid + leavemybankmoneyalone;
        leavemybankmoneyalone = leavemybankmoneyalone - leavemybankmoneyalone;
        player groupChat "You did not have enough to pay for the loan. The money that you had was taken and the missing amount has been added to the amount due";
        hint format["You have paid %1 and still owe %2", loanpaid, loandue - loanpaid];
    };
};
player groupchat "Your loan has been repaid";
peopleWithLoans = peopleWithLoans - [name vehicle player];
publicVariable "peopleWithLoans";
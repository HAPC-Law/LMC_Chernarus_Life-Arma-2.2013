_veh = vehicle player;
_orgpos = position player;
_servicefailed = "false";

gcvrsservicescriptactive = "true";

titleText ["SERVICING PROGRESS:[|         ]COMPLETE", "PLAIN DOWN"];
sleep 1;
titleText ["SERVICING PROGRESS:[||        ]COMPLETE", "PLAIN DOWN"];
sleep 1;
titleText ["SERVICING PROGRESS:[|||       ]COMPLETE", "PLAIN DOWN"];
sleep 1;
titleText ["SERVICING PROGRESS:[||||      ]COMPLETE", "PLAIN DOWN"];
sleep 1;
titleText ["SERVICING PROGRESS:[|||||     ]COMPLETE", "PLAIN DOWN"];
sleep 1;
titleText ["SERVICING PROGRESS:[||||||    ]COMPLETE", "PLAIN DOWN"];
sleep 1;
titleText ["SERVICING PROGRESS:[|||||||   ]COMPLETE", "PLAIN DOWN"];
sleep 1;
titleText ["SERVICING PROGRESS:[||||||||  ]COMPLETE", "PLAIN DOWN"];
sleep 1;
titleText ["SERVICING PROGRESS:[||||||||| ]COMPLETE", "PLAIN DOWN"];
sleep 1;
titleText ["SERVICING PROGRESS:[||||||||||]COMPLETE", "PLAIN DOWN"];
	
	
if ((position player distance _orgpos > 10) || !(driver vehicle player == player)) then
	{
	titleText ["SERVICING PROCESS ABORTED", "PLAIN DOWN"];
	_servicefailed = "true";
	} else
	{
	vehicle player setdamage 0;
	vehicle player setfuel 1;
	titleText ["SERVICE COMPLETE", "PLAIN DOWN"];
	};

gcvrsservicescriptactive = "false";
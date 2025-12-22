_vehsweapons = weapons player;
_veh = vehicle player;
_orgpos = position player;

gcvrsservicescriptactive = "true";

// M1A2 Abrams Tusk
if (typeof vehicle player == "RHIB") then
	{
	titleText ["REARMING PROGRESS:[|         ]COMPLETE", "PLAIN DOWN"];
	sleep 1;
	titleText ["REARMING PROGRESS:[||        ]COMPLETE", "PLAIN DOWN"];
	sleep 1;
	titleText ["REARMING PROGRESS:[|||       ]COMPLETE", "PLAIN DOWN"];
	sleep 1;
	titleText ["REARMING PROGRESS:[||||      ]COMPLETE", "PLAIN DOWN"];
	sleep 1;
	titleText ["REARMING PROGRESS:[|||||     ]COMPLETE", "PLAIN DOWN"];
	sleep 1;
	titleText ["REARMING PROGRESS:[||||||    ]COMPLETE", "PLAIN DOWN"];
	sleep 1;
	titleText ["REARMING PROGRESS:[|||||||   ]COMPLETE", "PLAIN DOWN"];
	sleep 1;
	titleText ["REARMING PROGRESS:[||||||||  ]COMPLETE", "PLAIN DOWN"];
	sleep 1;
	titleText ["REARMING PROGRESS:[||||||||| ]COMPLETE", "PLAIN DOWN"];
	sleep 1;
	titleText ["REARMING PROGRESS:[||||||||||]COMPLETE", "PLAIN DOWN"];
	if ((position player distance _orgpos > 10) || !(gunner vehicle player == player)) then
		{
		titleText ["REARMING PROCESS ABORTED", "PLAIN DOWN"];
		} else
		{
		vehicle player removemagazines "100Rnd_127x99_M2";
		vehicle player addmagazine "100Rnd_127x99_M2";
		vehicle player addmagazine "100Rnd_127x99_M2";
		vehicle player addmagazine "100Rnd_127x99_M2";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};

// RHIB2Turret
if (typeof vehicle player == "RHIB2Turret") then
	{
	titleText ["REARMING PROGRESS:[|         ]COMPLETE", "PLAIN DOWN"];
	sleep 1;
	titleText ["REARMING PROGRESS:[||        ]COMPLETE", "PLAIN DOWN"];
	sleep 1;
	titleText ["REARMING PROGRESS:[|||       ]COMPLETE", "PLAIN DOWN"];
	sleep 1;
	titleText ["REARMING PROGRESS:[||||      ]COMPLETE", "PLAIN DOWN"];
	sleep 1;
	titleText ["REARMING PROGRESS:[|||||     ]COMPLETE", "PLAIN DOWN"];
	sleep 1;
	titleText ["REARMING PROGRESS:[||||||    ]COMPLETE", "PLAIN DOWN"];
	sleep 1;
	titleText ["REARMING PROGRESS:[|||||||   ]COMPLETE", "PLAIN DOWN"];
	sleep 1;
	titleText ["REARMING PROGRESS:[||||||||  ]COMPLETE", "PLAIN DOWN"];
	sleep 1;
	titleText ["REARMING PROGRESS:[||||||||| ]COMPLETE", "PLAIN DOWN"];
	sleep 1;
	titleText ["REARMING PROGRESS:[||||||||||]COMPLETE", "PLAIN DOWN"];
	if ((position player distance _orgpos > 10) || !(gunner vehicle player == player)) then
		{
		titleText ["REARMING PROCESS ABORTED", "PLAIN DOWN"];
		} else
		{
		vehicle player removemagazines "48Rnd_40mm_MK19";
		vehicle player addmagazine "48Rnd_40mm_MK19";
		vehicle player addmagazine "48Rnd_40mm_MK19";
		vehicle player addmagazine "48Rnd_40mm_MK19";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
gcvrsservicescriptactive = "false";
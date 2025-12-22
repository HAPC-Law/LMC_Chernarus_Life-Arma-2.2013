_vehsweapons = weapons player;
_veh = vehicle player;
_orgpos = position player;
_servicefailed = "false";
gcvrsservicescriptactive = "true";

// A10
if (typeof vehicle player == "A10") then
	{
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
		vehicle player removemagazines "4Rnd_GBU12";
		vehicle player addmagazine "4Rnd_GBU12";
		vehicle player removemagazines "14Rnd_FFAR";
		vehicle player addmagazine "14Rnd_FFAR";
		vehicle player removemagazines "1350Rnd_30mmAP_A10";
		vehicle player addmagazine "1350Rnd_30mmAP_A10";
		vehicle player removemagazines "2Rnd_Maverick_A10";
		vehicle player addmagazine "2Rnd_Maverick_A10";
		vehicle player removemagazines "2Rnd_Sidewinder_AH1Z";
		vehicle player addmagazine "2Rnd_Sidewinder_AH1Z";
		vehicle player setdamage 0;
		vehicle player setfuel 1;
		titleText ["SERVICE COMPLETE", "PLAIN DOWN"];
		};
	};
	
// AV8B2
if (typeof vehicle player == "AV8B2") then
	{
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
		vehicle player removemagazines "14Rnd_FFAR";
		vehicle player addmagazine "14Rnd_FFAR";
		vehicle player removemagazines "300Rnd_25mm_GAU12";
		vehicle player addmagazine "300Rnd_25mm_GAU12";
		vehicle player removemagazines "6Rnd_Mk82";
		vehicle player addmagazine "6Rnd_Mk82";
		vehicle player removemagazines "2Rnd_Sidewinder_AH1Z";
		vehicle player addmagazine "2Rnd_Sidewinder_AH1Z";
		vehicle player setdamage 0;
		vehicle player setfuel 1;
		titleText ["SERVICE COMPLETE", "PLAIN DOWN"];
		};
	};
	
// AV8B
if (typeof vehicle player == "AV8B") then
	{
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
		vehicle player removemagazines "300Rnd_25mm_GAU12";
		vehicle player addmagazine "300Rnd_25mm_GAU12";
		vehicle player removemagazines "6Rnd_GBU12_AV8B";
		vehicle player addmagazine "6Rnd_GBU12_AV8B";
		vehicle player setdamage 0;
		vehicle player setfuel 1;
		titleText ["SERVICE COMPLETE", "PLAIN DOWN"];
		};
	};

// C130J
if (typeof vehicle player == "C130J") then
	{
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
	};
	
// F35B
if (typeof vehicle player == "F35B") then
	{
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
		vehicle player removemagazines "2Rnd_GBU12";
		vehicle player addmagazine "2Rnd_GBU12";
		vehicle player removemagazines "300Rnd_25mm_GAU12";
		vehicle player addmagazine "300Rnd_25mm_GAU12";
		vehicle player removemagazines "2Rnd_Sidewinder_F35";
		vehicle player addmagazine "2Rnd_Sidewinder_F35";
		vehicle player setdamage 0;
		vehicle player setfuel 1;
		titleText ["SERVICE COMPLETE", "PLAIN DOWN"];
		};
	};
	
// Su25 Insurgents
if (typeof vehicle player == "Su25_Ins") then
	{
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
		vehicle player removemagazines "4Rnd_FAB_250";
		vehicle player addmagazine "4Rnd_FAB_250";
		vehicle player removemagazines "180Rnd_30mm_GSh301";
		vehicle player addmagazine "180Rnd_30mm_GSh301";
		vehicle player removemagazines "2Rnd_R73";
		vehicle player addmagazine "2Rnd_R73";
		vehicle player removemagazines "80Rnd_80mm";
		vehicle player addmagazine "80Rnd_80mm";
		vehicle player setdamage 0;
		vehicle player setfuel 1;
		titleText ["SERVICE COMPLETE", "PLAIN DOWN"];
		};
	};
	
// Su39 Russian
if (typeof vehicle player == "Su39") then
	{
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
		vehicle player removemagazines "4Rnd_Ch29";
		vehicle player addmagazine "4Rnd_Ch29";
		vehicle player removemagazines "180Rnd_30mm_GSh301";
		vehicle player addmagazine "180Rnd_30mm_GSh301";
		vehicle player removemagazines "2Rnd_R73";
		vehicle player addmagazine "2Rnd_R73";
		vehicle player removemagazines "80Rnd_80mm";
		vehicle player addmagazine "80Rnd_80mm";
		vehicle player setdamage 0;
		vehicle player setfuel 1;
		titleText ["SERVICE COMPLETE", "PLAIN DOWN"];
		};
	};
	
// Su25 CDF
if (typeof vehicle player == "Su25_CDF") then
	{
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
		vehicle player removemagazines "4Rnd_FAB_250";
		vehicle player addmagazine "4Rnd_FAB_250";
		vehicle player removemagazines "180Rnd_30mm_GSh301";
		vehicle player addmagazine "180Rnd_30mm_GSh301";
		vehicle player removemagazines "2Rnd_R73";
		vehicle player addmagazine "2Rnd_R73";
		vehicle player removemagazines "80Rnd_80mm";
		vehicle player addmagazine "80Rnd_80mm";
		vehicle player setdamage 0;
		vehicle player setfuel 1;
		titleText ["SERVICE COMPLETE", "PLAIN DOWN"];
		};
	};
	
// Su25 CDF Pilot Service
if ((typeof vehicle player == "Su34") && (driver vehicle player == player)) then
	{
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
	};
	
// Su25 CDF Gunner Rearm
if ((typeof vehicle player == "Su34") && (gunner vehicle player == player)) then
	{
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
	if ((position player distance _orgpos > 10) || !(gunner vehicle player == player)) then
		{
		titleText ["SERVICING PROCESS ABORTED", "PLAIN DOWN"];
		_servicefailed = "true";
		} else
		{
		vehicle player removemagazines "40Rnd_80mm";
		vehicle player addmagazine "40Rnd_80mm";
		vehicle player removemagazines "6Rnd_Ch29";
		vehicle player addmagazine "6Rnd_Ch29";
		vehicle player removemagazines "180Rnd_30mm_GSh301";
		vehicle player addmagazine "180Rnd_30mm_GSh301";
		vehicle player removemagazines "4Rnd_R73";
		vehicle player addmagazine "4Rnd_R73";
		titleText ["SERVICE COMPLETE", "PLAIN DOWN"];
		};
	};
	
gcvrsservicescriptactive = "false";
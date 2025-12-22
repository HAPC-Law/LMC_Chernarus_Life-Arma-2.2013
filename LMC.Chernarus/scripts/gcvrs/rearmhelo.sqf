_vehsweapons = weapons player;
_veh = vehicle player;
_orgpos = position player;

gcvrsservicescriptactive = "true";

// AH1Z Cobra
if (typeof vehicle player == "AH1Z") then
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
		vehicle player removemagazines "38Rnd_FFAR";
		vehicle player addmagazine "38Rnd_FFAR";
		vehicle player removemagazines "8Rnd_Hellfire";
		vehicle player addmagazine "8Rnd_Hellfire";
		vehicle player removemagazines "750Rnd_M197_AH1";
		vehicle player addmagazine "750Rnd_M197_AH1";
		vehicle player removemagazines "2Rnd_Sidewinder_AH1Z";
		vehicle player addmagazine "2Rnd_Sidewinder_AH1Z";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// Ka52
if (typeof vehicle player == "Ka52") then
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
		vehicle player removemagazines "250Rnd_30mmAP_2A42";
		vehicle player addmagazine "250Rnd_30mmAP_2A42";
		vehicle player removemagazines "250Rnd_30mmHE_2A42";
		vehicle player addmagazine "250Rnd_30mmHE_2A42";
		vehicle player removemagazines "40Rnd_80mm";
		vehicle player addmagazine "40Rnd_80mm";
		vehicle player removemagazines "12Rnd_Vikhr_KA50";
		vehicle player addmagazine "12Rnd_Vikhr_KA50";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// Ka52 Black
if (typeof vehicle player == "Ka52Black") then
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
		vehicle player removemagazines "250Rnd_30mmAP_2A42";
		vehicle player addmagazine "250Rnd_30mmAP_2A42";
		vehicle player removemagazines "250Rnd_30mmHE_2A42";
		vehicle player addmagazine "250Rnd_30mmHE_2A42";
		vehicle player removemagazines "40Rnd_80mm";
		vehicle player addmagazine "40Rnd_80mm";
		vehicle player removemagazines "12Rnd_Vikhr_KA50";
		vehicle player addmagazine "12Rnd_Vikhr_KA50";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// MH60S
if (typeof vehicle player == "MH60S") then
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
		vehicle player removemagazines "100Rnd_762x51_M240";
		vehicle player addmagazine "100Rnd_762x51_M240";
		vehicle player addmagazine "100Rnd_762x51_M240";
		vehicle player addmagazine "100Rnd_762x51_M240";
		vehicle player addmagazine "100Rnd_762x51_M240";
		vehicle player addmagazine "100Rnd_762x51_M240";
		vehicle player addmagazine "100Rnd_762x51_M240";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// MI17 CDF
if (typeof vehicle player == "Mi17_CDF") then
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
		vehicle player removemagazines "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// Mi24 D CDF
if (typeof vehicle player == "Mi24_D") then
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
		vehicle player removemagazines "128Rnd_57mm";
		vehicle player addmagazine "128Rnd_57mm";
		vehicle player removemagazines "4Rnd_AT2_Mi24D";
		vehicle player addmagazine "4Rnd_AT2_Mi24D";
		vehicle player removemagazines "1470Rnd_127x108_YakB";
		vehicle player addmagazine "1470Rnd_127x108_YakB";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// Mi-24 P
if (typeof vehicle player == "Mi24_P") then
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
		vehicle player removemagazines "40Rnd_80mm";
		vehicle player addmagazine "40Rnd_80mm";
		vehicle player removemagazines "4Rnd_AT9_Mi24P";
		vehicle player addmagazine "4Rnd_AT9_Mi24P";
		vehicle player removemagazines "750Rnd_30mm_GSh301";
		vehicle player addmagazine "750Rnd_30mm_GSh301";
		vehicle player removemagazines "2Rnd_FAB_250";
		vehicle player addmagazine "2Rnd_FAB_250";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// Mi-24 P
if (typeof vehicle player == "Mi24_P") then
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
		vehicle player removemagazines "40Rnd_80mm";
		vehicle player addmagazine "40Rnd_80mm";
		vehicle player removemagazines "4Rnd_AT9_Mi24P";
		vehicle player addmagazine "4Rnd_AT9_Mi24P";
		vehicle player removemagazines "750Rnd_30mm_GSh301";
		vehicle player addmagazine "750Rnd_30mm_GSh301";
		vehicle player removemagazines "2Rnd_FAB_250";
		vehicle player addmagazine "2Rnd_FAB_250";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// Mi-24 V
if (typeof vehicle player == "Mi24_V") then
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
		vehicle player removemagazines "80Rnd_80mm";
		vehicle player addmagazine "80Rnd_80mm";
		vehicle player removemagazines "4Rnd_AT6_Mi24V";
		vehicle player addmagazine "4Rnd_AT6_Mi24V";
		vehicle player removemagazines "1470Rnd_127x108_YakB";
		vehicle player addmagazine "1470Rnd_127x108_YakB";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// MI17 Ins
if (typeof vehicle player == "Mi17_Ins") then
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
		vehicle player removemagazines "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// MI17 Rockets Russian
if (typeof vehicle player == "Mi17_rockets_RU") then
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
		vehicle player removemagazines "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		vehicle player addmagazine "100Rnd_762x54_PK";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// UH1Y
if (typeof vehicle player == "UH1Y") then
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
		vehicle player removemagazines "2000Rnd_762x51_M134";
		vehicle player addmagazine "2000Rnd_762x51_M134";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};

gcvrsservicescriptactive = "false";
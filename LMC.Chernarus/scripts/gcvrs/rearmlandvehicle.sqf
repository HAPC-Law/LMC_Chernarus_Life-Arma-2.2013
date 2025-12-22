_vehsweapons = weapons player;
_veh = vehicle player;
_orgpos = position player;

gcvrsservicescriptactive = "true";

// M1A2 Abrams Tusk
if (typeof vehicle player == "M1A2_TUSK_MG") then
	{
	if ((position player distance _orgpos > 10) || !(gunner vehicle player == player)) then
		{
		titleText ["PROCESS ABORTED", "PLAIN DOWN"];
		} else
		{
		vehicle player removemagazines "20Rnd_120mmSABOT_M1A2";
		vehicle player removemagazines "20Rnd_120mmHE_M1A2";
		vehicle player addmagazine "20Rnd_120mmSABOT_M1A2";
		vehicle player addmagazine "20Rnd_120mmHE_M1A2";
		vehicle player removeWeapon "M240_veh";
		vehicle player addweapon "GAU8";
		vehicle player addmagazine "1350Rnd_30mmAP_A10";
		titleText ["PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};

// M1A1 Abrams
if (typeof vehicle player == "M1A1") then
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
		vehicle player removemagazines "20Rnd_120mmSABOT_M1A2";
		vehicle player removemagazines "20Rnd_120mmHE_M1A2";
		vehicle player addmagazine "20Rnd_120mmSABOT_M1A2";
		vehicle player addmagazine "20Rnd_120mmHE_M1A2";
		vehicle player removemagazines "1200Rnd_762x51_M240";
		vehicle player addmagazine "1200Rnd_762x51_M240";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};

// Humvee M2
if (typeof vehicle player == "HMMWV_M2") then
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
		vehicle player addmagazine "100Rnd_127x99_M2";
		vehicle player addmagazine "100Rnd_127x99_M2";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};

// Humvee Armored M240
if (typeof vehicle player == "HMMWV_Armored") then
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
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// Humvee MK19
if (typeof vehicle player == "HMMWV_MK19") then
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
		vehicle player addmagazine "48Rnd_40mm_MK19";
		vehicle player addmagazine "48Rnd_40mm_MK19";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// Humvee TOW Launcher
if (typeof vehicle player == "HMMWV_TOW") then
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
		vehicle player removemagazines "6Rnd_TOW_HMMWV";
		vehicle player addmagazine "6Rnd_TOW_HMMWV";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// Humvee Avenger
if (typeof vehicle player == "HMMWV_Avenger") then
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
		vehicle player removemagazines "250Rnd_127x99_M3P";
		vehicle player addmagazine "250Rnd_127x99_M3P";
		vehicle player addmagazine "250Rnd_127x99_M3P";
		vehicle player removemagazines "8Rnd_Stinger";
		vehicle player addmagazine "8Rnd_Stinger";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};

// LAV-25 HQ
if (typeof vehicle player == "LAV25_HQ") then
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
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// LAV-25
if (typeof vehicle player == "LAV25") then
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
		vehicle player removemagazines "1200Rnd_762x51_M240";
		vehicle player addmagazine "1200Rnd_762x51_M240";
		vehicle player removemagazines "210Rnd_25mm_M242_HEI";
		vehicle player addmagazine "210Rnd_25mm_M242_HEI";
		vehicle player removemagazines "210Rnd_25mm_M242_APDS";
		vehicle player addmagazine "210Rnd_25mm_M242_APDS";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// M270 MLRS (Rocket Tank)
if (typeof vehicle player == "MLRS") then
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
		vehicle player removemagazines "12Rnd_MLRS";
		vehicle player addmagazine "12Rnd_MLRS";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// AAVP7A1 Marine Amphibious Assault Vehicle (AAV)
if (typeof vehicle player == "AAV") then
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
		vehicle player addmagazine "100Rnd_127x99_M2";
		vehicle player addmagazine "100Rnd_127x99_M2";
		vehicle player removemagazines "48Rnd_40mm_MK19";
		vehicle player addmagazine "48Rnd_40mm_MK19";
		vehicle player addmagazine "48Rnd_40mm_MK19";
		vehicle player addmagazine "48Rnd_40mm_MK19";
		vehicle player addmagazine "48Rnd_40mm_MK19";
		vehicle player addmagazine "48Rnd_40mm_MK19";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};


// RUSSIAN VEHICLES

// Tunguska
if (typeof vehicle player == "2S6M_Tunguska") then
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
		vehicle player removemagazines "1904Rnd_30mmAA_2A38M";
		vehicle player addmagazine "1904Rnd_30mmAA_2A38M";
		vehicle player removemagazines "8Rnd_9M311";
		vehicle player addmagazine "8Rnd_9M311";
		titleText ["REARMING PROCESS COMPLETE (Note: Tunguska takes an additional 3 to 5 minutes to load new magazines)", "PLAIN DOWN"];
		};
	};
	
// BMP3
if (typeof vehicle player == "BMP3") then
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
		vehicle player removemagazines "2000Rnd_762x54_PKT";
		vehicle player addmagazine "2000Rnd_762x54_PKT";
		vehicle player removemagazines "22Rnd_100mm_HE_2A70";
		vehicle player addmagazine "22Rnd_100mm_HE_2A70";
		vehicle player removemagazines "8Rnd_AT10_BMP3";
		vehicle player addmagazine "8Rnd_AT10_BMP3";
		vehicle player removemagazines "250Rnd_30mmAP_2A72";
		vehicle player addmagazine "250Rnd_30mmAP_2A72";
		vehicle player removemagazines "250Rnd_30mmHE_2A72";
		vehicle player addmagazine "250Rnd_30mmHE_2A72";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};

// BTR-90
if (typeof vehicle player == "BTR90") then
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
		vehicle player removemagazines "400Rnd_30mm_AGS17";
		vehicle player addmagazine "400Rnd_30mm_AGS17";
		vehicle player removemagazines "8Rnd_AT5_BMP2";
		vehicle player addmagazine "8Rnd_AT5_BMP2";
		vehicle player removemagazines "2000Rnd_762x54_PKT";
		vehicle player addmagazine "2000Rnd_762x54_PKT";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};

// BTR-90 HQ
if (typeof vehicle player == "BTR90_HQ") then
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
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// T-72
if (typeof vehicle player == "T72_RU") then
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
		vehicle player removemagazines "2000Rnd_762x54_PKT";
		vehicle player addmagazine "2000Rnd_762x54_PKT";
		vehicle player removemagazines "23Rnd_125mmSABOT_T72";
		vehicle player addmagazine "23Rnd_125mmSABOT_T72";
		vehicle player removemagazines "22Rnd_125mmHE_T72";
		vehicle player addmagazine "22Rnd_125mmHE_T72";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// T90
if (typeof vehicle player == "T90") then
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
		vehicle player removemagazines "23Rnd_125mmSABOT_T72";
		vehicle player addmagazine "23Rnd_125mmSABOT_T72";
		vehicle player removemagazines "22Rnd_125mmHE_T72";
		vehicle player addmagazine "22Rnd_125mmHE_T72";
		vehicle player removemagazines "5Rnd_AT11_T90";
		vehicle player addmagazine "5Rnd_AT11_T90";
		vehicle player removemagazines "250Rnd_762x54_PKT_T90";
		vehicle player addmagazine "250Rnd_762x54_PKT_T90";
		vehicle player addmagazine "250Rnd_762x54_PKT_T90";
		vehicle player addmagazine "250Rnd_762x54_PKT_T90";
		vehicle player addmagazine "250Rnd_762x54_PKT_T90";
		vehicle player addmagazine "250Rnd_762x54_PKT_T90";
		vehicle player addmagazine "250Rnd_762x54_PKT_T90";
		vehicle player addmagazine "250Rnd_762x54_PKT_T90";
		vehicle player addmagazine "250Rnd_762x54_PKT_T90";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// Vodnik
if (typeof vehicle player == "GAZ_Vodnik") then
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
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// Vodnik HMG
if (typeof vehicle player == "GAZ_Vodnik_HMG") then
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
		vehicle player removemagazines "150Rnd_30mmAP_2A42";
		vehicle player addmagazine "150Rnd_30mmAP_2A42";
		vehicle player removemagazines "150Rnd_30mmHE_2A42";
		vehicle player addmagazine "150Rnd_30mmHE_2A42";
		vehicle player removemagazines "1500Rnd_762x54_PKT";
		vehicle player addmagazine "1500Rnd_762x54_PKT";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// UAZ AGS-30
if (typeof vehicle player == "UAZ_AGS30_RU") then
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
		vehicle player removemagazines "29Rnd_30mm_AGS30";
		vehicle player addmagazine "29Rnd_30mm_AGS30";
		vehicle player addmagazine "29Rnd_30mm_AGS30";
		vehicle player addmagazine "29Rnd_30mm_AGS30";
		vehicle player addmagazine "29Rnd_30mm_AGS30";
		vehicle player addmagazine "29Rnd_30mm_AGS30";
		vehicle player addmagazine "29Rnd_30mm_AGS30";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// BM-21 GRAD Rocket Arty Truck
if (typeof vehicle player == "GRAD_RU") then
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
		vehicle player removemagazines "40Rnd_GRAD";
		vehicle player addmagazine "40Rnd_GRAD";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// Insurgent Vehicles

// BMP2
if (typeof vehicle player == "BMP2_INS") then
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
		vehicle player removemagazines "2000Rnd_762x54_PKT";
		vehicle player addmagazine "2000Rnd_762x54_PKT";
		vehicle player removemagazines "250Rnd_30mmAP_2A42";
		vehicle player addmagazine "250Rnd_30mmAP_2A42";
		vehicle player removemagazines "250Rnd_30mmHE_2A42";
		vehicle player addmagazine "250Rnd_30mmHE_2A42";
		vehicle player removemagazines "8Rnd_AT5_BMP2";
		vehicle player addmagazine "8Rnd_AT5_BMP2";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// BMP2 HQ
if (typeof vehicle player == "BMP2_HQ_INS") then
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
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// BRDM2
if (typeof vehicle player == "BRDM2_INS") then
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
		vehicle player removemagazines "1500Rnd_762x54_PKT";
		vehicle player addmagazine "1500Rnd_762x54_PKT";
		vehicle player removemagazines "500Rnd_145x115_KPVT";
		vehicle player addmagazine "500Rnd_145x115_KPVT";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// BRDM2 ATGM
if (typeof vehicle player == "BRDM2_ATGM_INS") then
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
		vehicle player removemagazines "1500Rnd_762x54_PKT";
		vehicle player addmagazine "5Rnd_AT5_BRDM2";
		vehicle player addmagazine "5Rnd_AT5_BRDM2";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// T72
if (typeof vehicle player == "T72_INS") then
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
		vehicle player removemagazines "23Rnd_125mmSABOT_T72";
		vehicle player addmagazine "23Rnd_125mmSABOT_T72";
		vehicle player removemagazines "22Rnd_125mmHE_T72";
		vehicle player addmagazine "22Rnd_125mmHE_T72";
		vehicle player removemagazines "2000Rnd_762x54_PKT";
		vehicle player addmagazine "2000Rnd_762x54_PKT";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// ZSU Shilka
if (typeof vehicle player == "ZSU_INS") then
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
		vehicle player removemagazines "2000Rnd_23mm_AZP85";
		vehicle player addmagazine "2000Rnd_23mm_AZP85";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// Grad Rocket Arty Truck
if (typeof vehicle player == "GRAD_INS") then
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
		vehicle player removemagazines "40Rnd_GRAD";
		vehicle player addmagazine "40Rnd_GRAD";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// UAZ AGS-30
if (typeof vehicle player == "UAZ_AGS30_INS") then
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
		vehicle player removemagazines "29Rnd_30mm_AGS30";
		vehicle player addmagazine "29Rnd_30mm_AGS30";
		vehicle player addmagazine "29Rnd_30mm_AGS30";
		vehicle player addmagazine "29Rnd_30mm_AGS30";
		vehicle player addmagazine "29Rnd_30mm_AGS30";
		vehicle player addmagazine "29Rnd_30mm_AGS30";
		vehicle player addmagazine "29Rnd_30mm_AGS30";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// UAZ MG
if (typeof vehicle player == "UAZ_MG_INS") then
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
		vehicle player removemagazines "50Rnd_127x107_DSHKM";
		vehicle player addmagazine "50Rnd_127x107_DSHKM";
		vehicle player addmagazine "50Rnd_127x107_DSHKM";
		vehicle player addmagazine "50Rnd_127x107_DSHKM";
		vehicle player addmagazine "50Rnd_127x107_DSHKM";
		vehicle player addmagazine "50Rnd_127x107_DSHKM";
		vehicle player addmagazine "50Rnd_127x107_DSHKM";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// UAZ SPG-9
if (typeof vehicle player == "UAZ_SPG9_INS") then
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
		vehicle player removemagazines "PG9_AT";
		vehicle player addmagazine "PG9_AT";
		vehicle player addmagazine "PG9_AT";
		vehicle player addmagazine "PG9_AT";
		vehicle player addmagazine "PG9_AT";
		vehicle player addmagazine "PG9_AT";
		vehicle player addmagazine "PG9_AT";
		vehicle player addmagazine "PG9_AT";
		vehicle player addmagazine "PG9_AT";
		vehicle player removemagazines "OG9_HE";
		vehicle player addmagazine "OG9_HE";
		vehicle player addmagazine "OG9_HE";
		vehicle player addmagazine "OG9_HE";
		vehicle player addmagazine "OG9_HE";
		vehicle player addmagazine "OG9_HE";
		vehicle player addmagazine "OG9_HE";
		vehicle player addmagazine "OG9_HE";
		vehicle player addmagazine "OG9_HE";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// CDF Forces

// BMP2 CDF
if (typeof vehicle player == "BMP2_CDF") then
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
		vehicle player removemagazines "8Rnd_AT5_BMP2";
		vehicle player addmagazine "8Rnd_AT5_BMP2";
		vehicle player removemagazines "2000Rnd_762x54_PKT";
		vehicle player addmagazine "2000Rnd_762x54_PKT";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// BMP2 HQ CDF
if (typeof vehicle player == "BMP2_HQ_CDF") then
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
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// BRDM2 CDF
if (typeof vehicle player == "BRDM2_CDF") then
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
		vehicle player removemagazines "500Rnd_145x115_KPVT";
		vehicle player addmagazine "500Rnd_145x115_KPVT";
		vehicle player removemagazines "2000Rnd_762x54_PKT";
		vehicle player addmagazine "2000Rnd_762x54_PKT";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// BRDM2 CDF
if (typeof vehicle player == "BRDM2_ATGM_CDF") then
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
		vehicle player removemagazines "5Rnd_AT5_BRDM2";
		vehicle player addmagazine "5Rnd_AT5_BRDM2";
		vehicle player addmagazine "5Rnd_AT5_BRDM2";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// T-72 CDF
if (typeof vehicle player == "T72_CDF") then
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
		vehicle player removemagazines "2000Rnd_762x54_PKT";
		vehicle player addmagazine "2000Rnd_762x54_PKT";
		vehicle player removemagazines "23Rnd_125mmSABOT_T72";
		vehicle player addmagazine "23Rnd_125mmSABOT_T72";
		vehicle player removemagazines "22Rnd_125mmHE_T72";
		vehicle player addmagazine "22Rnd_125mmHE_T72";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// ZSU Shilka CDF
if (typeof vehicle player == "ZSU_CDF") then
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
		vehicle player removemagazines "2000Rnd_23mm_AZP85";
		vehicle player addmagazine "2000Rnd_23mm_AZP85";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};

// Guerilla Vehicles

// BMP2 Guer
if (typeof vehicle player == "BMP2_Gue") then
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
		vehicle player removemagazines "2000Rnd_762x54_PKT";
		vehicle player addmagazine "2000Rnd_762x54_PKT";
		vehicle player removemagazines "250Rnd_30mmAP_2A42";
		vehicle player addmagazine "250Rnd_30mmAP_2A42";
		vehicle player removemagazines "250Rnd_30mmHE_2A42";
		vehicle player addmagazine "250Rnd_30mmHE_2A42";
		vehicle player removemagazines "8Rnd_AT5_BMP2";
		vehicle player addmagazine "8Rnd_AT5_BMP2";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// BM-21 GRAD Rocket Arty Truck CDF
if (typeof vehicle player == "GRAD_CDF") then
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
		vehicle player removemagazines "40Rnd_GRAD";
		vehicle player addmagazine "40Rnd_GRAD";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// UAZ AGS-30 CDF
if (typeof vehicle player == "UAZ_AGS30_CDF") then
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
		vehicle player removemagazines "29Rnd_30mm_AGS30";
		vehicle player addmagazine "29Rnd_30mm_AGS30";
		vehicle player addmagazine "29Rnd_30mm_AGS30";
		vehicle player addmagazine "29Rnd_30mm_AGS30";
		vehicle player addmagazine "29Rnd_30mm_AGS30";
		vehicle player addmagazine "29Rnd_30mm_AGS30";
		vehicle player addmagazine "29Rnd_30mm_AGS30";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// UAZ MG CDF
if (typeof vehicle player == "UAZ_MG_CDF") then
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
		vehicle player removemagazines "50Rnd_127x107_DSHKM";
		vehicle player addmagazine "50Rnd_127x107_DSHKM";
		vehicle player addmagazine "50Rnd_127x107_DSHKM";
		vehicle player addmagazine "50Rnd_127x107_DSHKM";
		vehicle player addmagazine "50Rnd_127x107_DSHKM";
		vehicle player addmagazine "50Rnd_127x107_DSHKM";
		vehicle player addmagazine "50Rnd_127x107_DSHKM";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// BRDM2 Gue
if (typeof vehicle player == "BRDM2_Gue") then
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
		vehicle player removemagazines "500Rnd_145x115_KPVT";
		vehicle player addmagazine "500Rnd_145x115_KPVT";
		vehicle player removemagazines "2000Rnd_762x54_PKT";
		vehicle player addmagazine "2000Rnd_762x54_PKT";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// BRDM2 HQ Gue
if (typeof vehicle player == "BRDM2_HQ_Gue") then
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
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// T34
if (typeof vehicle player == "T34") then
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
		vehicle player removemagazines "60Rnd_762x54_DT";
		vehicle player addmagazine "60Rnd_762x54_DT";
		vehicle player removemagazines "10Rnd_85mmAP";
		vehicle player addmagazine "10Rnd_85mmAP";
		vehicle player removemagazines "33Rnd_85mmHE";
		vehicle player addmagazine "33Rnd_85mmHE";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};
	
// T72 Gue
if (typeof vehicle player == "T72_Gue") then
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
		vehicle player removemagazines "2000Rnd_762x54_PKT";
		vehicle player addmagazine "2000Rnd_762x54_PKT";
		vehicle player removemagazines "23Rnd_125mmSABOT_T72";
		vehicle player addmagazine "23Rnd_125mmSABOT_T72";
		vehicle player removemagazines "22Rnd_125mmHE_T72";
		vehicle player addmagazine "22Rnd_125mmHE_T72";
		titleText ["REARMING PROCESS COMPLETE", "PLAIN DOWN"];
		};
	};

gcvrsservicescriptactive = "false";
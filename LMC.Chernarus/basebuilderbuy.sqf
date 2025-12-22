baseBuild = lbCurSel 1000;
alreadypressed = 0;

switch (baseBuild) do
{
	case 0: //Bar Gate
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 80) then
			{
				['bargate',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -80] call INV_addinventoryitem;
				alreadypressed = 0;
				hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 1: //Sign Checkpoint
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 10) then
			{
				['Sign_Checkpoint',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -10] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 2: //Bunker (Small)
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 350) then
			{
				['bunkersmall',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -350] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 3: //Road cone (light)
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 5) then
			{
				['landconelight',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -5] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 4: //Road barrier (light)
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 15) then
			{
				['roadbarrierlight',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -15] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 5: //Roadblock
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 35) then
			{
				['roadblock',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -35] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 6: //Hideout
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 2000) then
			{
				['hideout',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -2000] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 7: //Concrete Hedgehog
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 200) then
			{
				['Hhedgehog_concrete',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -200] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 8: //Storage box
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 0;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 250) then
			{
				['LocalBasicWeaponsBox',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -250] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 9: //Camo Net
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 75) then
			{
				['Camonet',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -75] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 10: //RazorWire
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 78) then
			{
				['FortRazorWireCop',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -78.88] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 11: //Barricade
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 120) then
			{
				['Barricade',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -120] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 12: //Fireplace
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 10) then
			{
				['fireplace',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -10] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 13: //Tent
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 350) then
			{
				['campeast',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -350] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 14: //Road Barrier
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 12) then
			{
				['roadbarrierlong',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -12] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 15: //Trench
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 15) then
			{
				['fortenvelopesmall',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -15] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 16: //House
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 200000) then
			{
				['House',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -120000] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 17: //Small House
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 120000) then
			{
				['House2',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -200000] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 18: //Warning Tape
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 7) then
			{
				['signtape',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -7] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 19: //Gate
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 80) then
			{
				['Tor',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -80] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 20: //Sandbag Wall
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 90) then
			{
				['Sandsacke',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -90] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 21: //Barracks
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 450) then
			{
				['Baracke',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -450] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 22: //Small Tower
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 200) then
			{
				['Jaegerstand',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -200] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 23: //Fence
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 80) then
			{
				['Blechzaun',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -80] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 24: //Helipad
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 100) then
			{
				['helipad',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -100] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 25: //Guard Post
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 120) then
			{
				['guardpost',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -120] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 26: //Small Land Ladder
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 20) then
			{
				['ladr2',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -20] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 27: //Toilet
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 150) then
			{
				['toilet',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -150] call INV_addinventoryitem;
				alreadypressed = 0;
hint "Purchased!";
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
};
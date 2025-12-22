businessManBuy = lbCurSel 2119;
alreadypressed = 0;

switch (businessManBuy) do
{
	case 0: //---Business Man Manufacturing---
	{
		player groupChat "Not a command";
	};
	case 1: //-Car Items
	{
		player groupChat "Not a command";
	};
	case 2: //Speed Upgrade 7 ($90,000)
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 90000) then
			{
				['supgrade7',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -90000] call INV_addinventoryitem;
				alreadypressed = 0;
				player groupChat "You manufactured one Speed Upgrade 7 for $90,000";
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
	case 3: //Speed Upgrade 6 ($60,000)
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 60000) then
			{
				['supgrade6',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -60000] call INV_addinventoryitem;
				alreadypressed = 0;
				player groupChat "You manufactured one Speed Upgrade 6 for $60,000";
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
	case 4: //Speed Upgrade 5 ($40,000)
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 40000) then
			{
				['supgrade5',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -40000] call INV_addinventoryitem;
				alreadypressed = 0;
				player groupChat "You manufactured one Speed Upgrade 5 for $40,000";
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
	case 5: //Speed Upgrade 4 ($20,000)
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 20000) then
			{
				['supgrade4',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -20000] call INV_addinventoryitem;
				alreadypressed = 0;
				player groupChat "You manufactured one Speed Upgrade 4 for $20,000";
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
	case 6: //Nitro ($8,000)
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 8000) then
			{
				['nitro',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -8000] call INV_addinventoryitem;
				alreadypressed = 0;
				player groupChat "You manufactured one Nitro for $8,000";
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
	case 7: //-Black Market Items-
	{
		player groupChat "Not a command";
	};
	case 8: //Lockpick ($800)
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 800) then
			{
				['lockpick',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -800] call INV_addinventoryitem;
				alreadypressed = 0;
				player groupChat "You manufactured one Lockpick for $800";
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
	case 9: //Lighter ($700)
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 700) then
			{
				['lighter',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -700] call INV_addinventoryitem;
				alreadypressed = 0;
				player groupChat "You manufactured one Lighter for $700";
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
	case 10: //-Misc Items-
	{
		player groupChat "Not a command";
	};
	case 11: //Cell Phone ($600)
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 600) then
			{
				['handy',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -600] call INV_addinventoryitem;
				alreadypressed = 0;
				player groupChat "You manufactured one Cell Phone for $600";
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
	case 12: //Jackhammer ($2700)
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 2700) then
			{
				['JackHammer',1] call INV_AddInventoryItem;
				['moneyHackerFuckOff', -2700] call INV_addinventoryitem;
				alreadypressed = 0;
				player groupChat "You manufactured one Jackhammer for $2,700";
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
	case 13: //blank
	{
		player groupChat "Transaction in progress";
	};
	case 14: //---Business Man Services---
	{
		player groupChat "Transaction in progress";
	};
	case 15: //Set Demerits to 10 ($10,000)
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('moneyHackerFuckOff' call INV_GetItemAmount) >= 10000) then
			{
				demerits = 10;
				['moneyHackerFuckOff', -10000] call INV_addinventoryitem;
				alreadypressed = 0;
				player groupChat "You set your driver demerit points to 10 for $10,000";
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
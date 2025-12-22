playing_lotto = 0;

LottoArray = 

[

//	0			 	1				 2			3				4   	Position im Array
["lotto1", 	"5 Star Gold",	 		5,		(50),		 	20],							
["lotto2", 	"Break The Bank", 		20,		(300), 		 	20],			
["lotto3", 	"Diamond 7!",	 		50, 		(500), 		 	20],							
["lotto4", 	"Pot O' Gold",	100,  	(1000), 			20],	
["lotto5", 	"Fire & Ice 5's",	150,  	(2000), 			20],	
["lotto6", 	"Platinum Card",	200,  	(5000), 			20],	
["lotto7", 	"Margarita's & Cherries",	250,  	(7000), 			20],	
["lotto8", 	"Ice On The Rocks",	500,  	(10000), 			20],	
["lotto9", 	"Skyline",	1000,  	(15000), 			20],	
["lotto10", 	"Premium Vegas!",	3000,  	(30000), 			20],	
["lotto11", 	"Stars",	25000,  	(60000), 			20],	
["lotto12", 	"Ching Ching Ching!",	30000,  	(75000), 			20],	
["lotto13", 	"Bankrolls",	50000,  	(100000), 			20],	
["lotto14", 	"Piles Of Dough",	100000,  	(200000), 			20],								
["lotto15",		"Stairway To Heaven",			500000, 	(2000000), 		20]

];

// Orte an denen man Lotto spielen kann( Händler)
LottoFlags = 									

[

[shop1,["lotto1", "lotto2", "lotto3", "lotto4", "lotto5","lotto6","lotto7","lotto8","lotto9","lotto10","lotto11","lotto12","lotto13","lotto14","lotto15"]],
[shop2,["lotto1", "lotto2", "lotto3", "lotto4", "lotto5","lotto6","lotto7","lotto8","lotto9","lotto10","lotto11","lotto12","lotto13","lotto14","lotto15"]],
[shop3,["lotto1", "lotto2", "lotto3", "lotto4", "lotto5","lotto6","lotto7","lotto8","lotto9","lotto10","lotto11","lotto12","lotto13","lotto14","lotto15"]],
[shop4,["lotto1", "lotto2", "lotto3", "lotto4", "lotto5","lotto6","lotto7","lotto8","lotto9","lotto10","lotto11","lotto12","lotto13","lotto14","lotto15"]],
[fuelshop1,["lotto1", "lotto2", "lotto3", "lotto4", "lotto5","lotto6","lotto7","lotto8","lotto9","lotto10","lotto11","lotto12","lotto13","lotto14","lotto15"]],
[fuelshop2,["lotto1", "lotto2", "lotto3", "lotto4", "lotto5","lotto6","lotto7","lotto8","lotto9","lotto10","lotto11","lotto12","lotto13","lotto14","lotto15"]],
[fuelshop3,["lotto1", "lotto2", "lotto3", "lotto4", "lotto5","lotto6","lotto7","lotto8","lotto9","lotto10","lotto11","lotto12","lotto13","lotto14","lotto15"]],
[fuelshop4,["lotto1", "lotto2", "lotto3", "lotto4", "lotto5","lotto6","lotto7","lotto8","lotto9","lotto10","lotto11","lotto12","lotto13","lotto14","lotto15"]],
[fuelshop6,["lotto1", "lotto2", "lotto3", "lotto4", "lotto5","lotto6","lotto7","lotto8","lotto9","lotto10","lotto11","lotto12","lotto13","lotto14","lotto15"]],
[fuelshop7,["lotto1", "lotto2", "lotto3", "lotto4", "lotto5","lotto6","lotto7","lotto8","lotto9","lotto10","lotto11","lotto12","lotto13","lotto14","lotto15"]],
[americanfoods,["lotto1", "lotto2", "lotto3", "lotto4", "lotto5","lotto6","lotto7","lotto8","lotto9","lotto10","lotto11","lotto12","lotto13","lotto14","lotto15"]]			
//[DP24,["lotto1", "lotto2", "lotto3", "lotto5"]]			cheater lotto

];

GetLottoArray = 

{

private ["_c", "_lotto"];	

for "_c" from 0 to (count LottoArray - 1) do

	{	

	if (((LottoArray select _c) select 0) == _this) exitWith { (LottoArray select _c) };

	};

};
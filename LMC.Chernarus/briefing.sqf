if(player diarySubjectExists "laws")exitwith{};


player createDiarySubject ["Laws","Laws"];
player createDiarySubject ["rules","General Rules"];
player createDiarySubject ["controls","Controls"];
player createDiarySubject ["info","CLR Guide"];
player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["job","Jobs"];
player createDiarySubject ["insurance","Insurance"];
player createDiarySubject ["credits","Credits"];


player createDiaryRecord ["info", 
[
"Factories", 
"
Location: Check map, there is a general factory/ car factory/ boat factory marked in blue<br/>
Cost/pay: Varies?<br/>
Req: None?<br/>
Info:  You can purchase various factories in CLR.  Take cars for example, there are only a certain amount of cars in the vehicle shops.  When the players have purchased them all, someone will have to buy the car factory and make more vehicles.  To do this simply find the ""car factory"" in Electro and purchase the factory,  then access the factory's storage via the mouse scroll wheel.  You will get a inventory interface much like the car inventory.  You need to put money into the storage to begin manufacturing vehicles.
<br/>
Once you've done this, simple start to manufacture a selected vehicle and wait for the required time.  When the time is up you can create the vehicle.
<br/>
This simple process is the same for any factory type interface you may encounter in CLR.<br/>
<br/>
<br/>
Special Factorys are factorys were you can make only things for the export.<br/>
Special Factorys are Oil Process factory, Steel Factory, Electronic Component Factory and Diamond Process factory.<br/>
Items you can produce there need ressources and not only money! Since 2.1.3 there are some Vehicle which need Res too!<br/>

"
]
];

player createDiaryRecord ["info", 
[
"Farming/Fishing", 
"
Bread:<br/>
Location: Check the map for ""Harvest Area""<br/>
Cost: $20,000 +/-<br/>
Pay: Varies<br/>
Req: [Tractor:$?], [Driver's License: $10,000],[Baker's License: $10,000]<br/>
Info:  This is a time consuming but legal and well paying job.  This is also something you can do right away after spawning.  First get a driver's license from the city hall, then head off to the car shop to buy a tractor.  Head on over to the ""harvest area"" located on the map near Balota.  There you can drive up and down the dirt rows until you gather enough wheat.  You will randomly ""harvest"" different amounts of wheat, 2-8 pieces at a time.  When you've gathered enough you will get a green measage indicating that your inventory is full.  You can use the ""T"" button to stash all that wheat into your tractor and continue to harvest the wheat.  Once you're full, head on back to Chern to process the wheat into bread.  At the bread processing area you'll need to purchase the ""baker's license"".  After that simply mouse scroll to ""process wheat"" until all the wheat in your inventory is processed.  At this point the wheat becomes bread which you can eat or sell.  Continue to process all the wheat, then he<br/>ad out to a store located on the map with a small blue box.  Stores are located all over the map so you can sell them where ever you like.  I think the price changes for this item as demand increases for that specific store.  IE some stores may pay more than others.
<br/>
Like I said, this is a time consuming avenue for making money but you can make quite a bit depending on the demand.  I believe I sold 50-100 Bread and got 100k for it.
<br/>
Fishing<br/>
Location:  Check the map out in the ocean<br/>
Cost: $11,000+/- depending upon the boat cost<br/>
Pay: ?<br/>
Req: [Boat License: $5,000],[Boat: Varies depending upon the boat]<br/>
<br/>
Notes: run into the ocean and swim to the fishing area.  There you will need to hold ""alt"" and spin your mouse around in circles real quick.  Wait until I can test this out or someone else write up this one lol.
"
]
];

player createDiaryRecord ["info", 
[
"Gangs", 
"
Being in a gang has several benefits:<br/>
Firstly, you are all in the same squad, which has the benefits of group channel chat etc.<br/>
Secondly, as a gang you'll all share a paycheck of $3000 between you for each gang area you control.<br/>
There will be more features coming later since this is basically just a trial run.<br/>
The cost to create a gang is $100000.<br/>
Once you have joined a gang you will always be in it unless the gang leader kicks you, or you leave via the gang menu.<br/>
The gang leader can kick members or block players from joining the gang in the Manage gang section of the gang menu.<br/>
Inactive gang members (ie members not currently ingame) cannot be kicked, however if the gangleader disconnects a new one will be selected. Also inactive gang members do not take part of the paycheck.<br/>
In order for a gang to control a gang area they only need walk up to the flag area and either neutralise or capture the flag.<br/>
This will take some time so if there are other gangs in the area be weary.<br/>
"
]
];

player createDiaryRecord ["info", 
[
"Basic jobs", 
"
Workplace's<br/>
Locations: check the map, there are 3 locations marked with yellow flags and a yellow circle.  Can't miss them.<br/>
Cost/Pay: Varies depending on which workplace you want to buy.<br/>
Req:  Money<br/>
Purpose:  Here you can walk up to the flag pole and mouse scroll.  You have several options, purchase workplace, courier mission, taxi mission.  By purchasing the workplace you get extra money each paycheck wired to your account.  Courier and Taxi missions are leagal mission for you to start making money.  Once you start a mission you can access the ""mission info"" via mouse scroll.  This will give you all the info you will need.  Check your map for the required destination and get moving quickly.  Some of the missions give you very little time.  Later you can get speed upgrades for your vehicle.
<br/>
Courier Missions:<br/>
Pay: $3,000-$80,000<br/>
Req: None<br/>
Info:  When you select the courier mission you will sometimes be given all the info you need, most of the time however you will need to use your scroll mouse wheel to find that info under ""?mission info?"".  Each time you choose this mission you will randomly be given a DP or Drop Point as your target location.  Use the map to find the DP# and head off quickly.  Some of the missions have very little time and if you fail you will have to wait a period of time to choose another.  Remember that there are 3 locations so a good rule of thumb is just to head off to the closest one.  However, I'm finding that the odds of getting higher paying missions are greater if you get missions from Workplace 2 or 3.  The reason for this is that the missions give you more money depending on the distance.  All you have to do is pull up to the location and run next to the civilian AI standing there.   It will automatically give you a completed mission and money in your pocket.  I would suggest you use a car for these as the motor <br/>bikes tend to get you killed.
<br/>
Taxi Missions:<br/>
Pay: $3,000-$80,000<br/>
Req: None<br/>
Info:  Same as the courier missions except this mission continues without you needing to return to a workplace and there is no time limit.  Simply check the map for a yellow ""pick up marker"" and head off to that location.  There you will need to pull up to the civilian AI and wait for them to get into your vehicle.  Once they're in just check your map for the drop off location.  Pull up to that area and they will get out of the vehicle on their own.  If by any chance you pop your tire and do not have a repair kit, the AI will continue to follow you around.
"
]
];

player createDiaryRecord ["info", 
[
"Licenses", 
"check the map"
]
];

player createDiaryRecord ["info", 
[
"Objectives", 
"
Civilian:<br/>
As a Civilian (or just civ) you should obey the laws, which have been made by the cops and the mayor. You can break these, but then you have to expect to get punished. This can lead from fines to terms of imprisonment and in the extreme case to death. So you should obey the laws.<br/>
Your overall objective as a civilian is to destroy the military HQ, which is in the military headquaters area marked on the map (ie stage a revolution).<br/>
This base can be defended by ai and police however so do not assault it ill prepared.<br/>
Alternatively you can simply roleplay doing legitimate activities.<br/>
<br/>
Police:<br/>
As a policeman (or just cop) you must ensure that all players adhere to the rules set up by the mayor and are punished accordingly with offence. However force of arms should be considered only as last resort or when lives are at stake. You are not to take lethal action against any civ unless they are a clear threat to other players. The shotgun has the ability to fire beanbag rounds. This is a ""non deadly"" munition.<br/>
It is also your job to make sure the Military headquaters remains properly defended by ai, which can be purchased at the respawn bunker in the copbase.<br/>
"
]
];

player createDiaryRecord ["controls", 
[
"", 
"
Civilian:<br/>
#1: Stats<br/>
here is where you will find a great deal of useful information.  Anything from how much money you are carrying to who has a bounty and how much that bounty may be.
<br/>
#2: Inventory:<br/>
-this will tell you what you are carrying and also provides an interface to use some of those items in your inventory.  For example, if your getting the measage, ""You Are Starving"" and you have 10 fish in your inventory.  Press the #2, highlight ""fish"", change the number in the box to ""10"", then click ""use"".  That will make your charactor eat the fish and you will loose some hunger (high hunger is a bad thing).  You may also notice ""key chain"" in your inventory.  This will hold all your keys to the vehicles you own.  You can give these keys to other players via this interface but know that they need to be near you for something like 5 seconds to receive the item.
<br/>
#3: Hands Up<br/>
This button will make your charactor put his hands up.  This is useful for when you want to show the coppers that you are not a threat and are cooperating.  They can then restrain you if they feel the need.
<br/>
#4: Hands Down<br/>
this button will return you to a normal pos from ""hands up"".
<br/>
E: Action<br/>
this button is your basic ""action button"".  this is how you will interact with the various interfaces around Chern such as shops and ATM's.  This will also allow you to attempt to steal from other players.  You can only steal money if the other player has been knocked unconscious or is restrained.
<br/>
T: Access Inventory<br/>
when you own a car or other vehicle, you can access that car's inventory by standing next to the car and pressing ""T"".  You will then be shown two box's.  The left box is what is in the car, and the right box is what is in your inventory.  Highlight the object you want to transfer, then select the amount and press the button on the side that has the item.  Car's hold a certain amount of weight just like your charactor so be aware of what you stash in there.  Also, if your vehicle is destroyed then you will loose whatever you place in here.  Coppers can search for drugs or other ileagal items.  If they find them in your car it will disappear and the coppers gain money equal to the value of the drugs.
<br/>
F: rate of fire<br/>
For the gun license course you will need to switch fire mode to use the weapon.  if your pistol is hidden in your inventory then you will need to press this to take off the safety as well.
<br/>
Y (Z auf deutschen Tastaturen): animationlist<br/>
Opens a list of spezial animations you can use for fun or Roleplay
<br/>
left shift+F: Stun<br/>
If you have a gun in your hands, you can stand next to another player and perform a stun action.  Be aware that this will knock all of the other players weapons out onto the ground, so if you don't want to piss everyone off, only do this to your enemies.
<br/>
0-0: options<br/>
this should give you the options for video settings, shout outs, fix head bug, and even a quick-brief tutorial on CLR.""
<br/>
`(tilde key (to the left of the 1 key): COPMENU. allows you to civcam or satcam civs, set their bounties, set them free and more. you have more options if you use the copmenu whilst in a vehicle.
Cops:<br/>
<br/>
F (in a vehicle): SIREN ON/OFF.<br/>
"
]
];
player createDiaryRecord ["Rules", 
[
"General Server Rules.",
"
MUST BE ON TEAMSPEAK, ts.gouerrero.com or you will be kicked.  Your name must match the ingame name.<br/>
<br/>
You may not deathmatch, but you may declare terrorism by telling where it will happen and who it will affect<br/>
<br/>
However, if civ's kill each other over illicit things, such as gang areas or drug spots then this is ok, BUT you will still recieve a bounty<br/>
<br/>
Deliberate overdriving of other players (civs and cops) is deathmatching.<br/>
<br/>
Police Weapons, vehicles and equipment may NOT be traded to civilians.<br/>
<br/>
Do not fire in or at the police base or at civilian spawn.<br/>
<br/>
It is ok to kill cops who abuse by stunning everyone for no reason or just act stupid. They are not protected from deathmatching.<br/>
<br/>
In dangerous situations, cops have the right to restrain people in an area for their safety<br/>
<br/>
If a vehicle is trying to run a cop over, the cop has clearence to shoot to protect their life<br/>
<br/>
"
]
];

player createDiaryRecord ["Rules", 
[
"Police Server Rules.",
"
<br/>
MOST IMPORTANT RULE WHEN PLAYING AS A COP: <br/>
COPS SHOULD ALWAYS TRY TO AVOID FIRING LEATHAL ROUNDS. STUN WEAPONS ARE THE M1014, MP5-SD, VSS-Vintorez and the M9-SD. 
<br/>
<br/>
Cops should only get into firefights for legitimate reasons relating to crimes.<br/>
<br/>
The police always HAVE the power to conduct random searches.<br/>
<br/>
The police may use lethal force if players lives are directly threatened.<br/>
<br/>
Stun weapons may be used for any situation where a civilian is non compliant.<br/>
<br/>
A cop may use leathal force on any civ that is armed and is a threat to others, eg. Terrorists.<br/>
<br/>
Cops may disable the wheels of any non compliant vehicles of any sort.<br/>
<br/>
The police may use deadly force against any armed vehicle any time.<br/>
<br/>
The police may confiscate any weaopns and vehicles that were used in a crime. Weapons should be sold or destroyed. Vehicles can be picked up from an impound lot if they are impounded.<br/>
<br/>
The police have to obey the laws the same way as civilians do. Speeding or driving offroad is only allowed while on duty (with sirens on).<br/>
<br/>
Abusing Cops rights is illegal and will be punished by kick.<br/>
<br/>
The Vodnik HMG (Listed as the Riot Vodnik at the SWAT base) is a stun vehicle. When using the main gun, the AP rounds are stun while the HE are leathal.<br/>

"
]
];

player createDiaryRecord ["Rules", 
[
"Civilian Server Rules.",
"
Civilian's may buy the Makarov SD which is a stun weapon, this is to only be used for self defence reasons, if found to be use for other than self defence then it will be treated as an illegal weapon.<br/>
<br/>
However, if civ's kill each other over illicit things, such as gang areas or drug spots then this is ok, BUT you will still recieve a bounty)<br/>
<br/>
Its only allowed for bountyhunters to kill wanted persons (Murder charge's or similar) with a bounty of 30k or more.<br/>
<br/>
The Terrorist HQ and Terrorist area are neutral zones. NO SHOOTOUTS!<br/>
<br/>
Jail times and ticket amounts can be discussed ingame, it must be fair and relate to the crime, contact Marinesharp if something doesnt sound right.<br/>

"
]
];


player createDiaryRecord ["Rules", 
[
"Basic Laws",
"
Basic Laws:<br/>
Every citizen AND cop have to obey these laws.<br/>
<br/>
1 In the playworld, we drive on the RIGHT side of the street/road.<br/>
2 Lights have to be turned on at night.
3 The Right of way has to be followed.
4 Driving offroad is forbidden except for harvesting and mining<br/>
5 Landing at streets and roads is not allowed. (eg, the grass area near spawn IS an acceptable landing location for air vehicles. <br/>
6 Police items (Weapons, vehicles and equipment) may NOT be traded to civilians.(However police donuts are allowed to be traded)<br/>
7 The mayor may not create laws, which offend basic laws and server rules.<br/>
8 Civs may use their weapons only for self defense.(Using weapons in an act of violence is a crime. If a civ is killed as an act of self defence, a cop MUST take off the civs bounty.)<br/>
9 Bountyhunters may hunt down wanted murders only if their bounty is over $30,000 AND they need a bounty hunter license for this purpose.<br/>

"
]
];

player createDiaryRecord ["Laws", 
[
"17# Civs Flying A Jet.",
"
If a civ is caught driving a jet, they can be arrested at Police Discretion.. The jet may be destroyed since it is dangerous. Cops have liberty to take down any armed jet without warning because that means civs have a false jet license and are terrorists.<br/>
<br/>
"
]
];

player createDiaryRecord ["Laws", 
[
"16# Driving without lights on.",
"
If a civ is caught driving at night without their lights on then they will be fined.<br/>
Fine : Police Discretion.<br/>
<br/>
"
]
];

player createDiaryRecord ["Laws", 
[
"15# Inappropriately placed objects.",
"
If a civ has placed an object that obstructs or restricts acess to an area.<br/>
Fine : Police Discretion.<br/>
<br/>
"
]
];
player createDiaryRecord ["Laws", 
[
"14# Possession of illegal firearms.",
"
If a civ is in possession of an illegal firearm, the offending weapon is to be destroyed and civ to be fined.<br/>
(Illegal gun: A gun that cannot be bought at the gun shop)<br/>
Fine : Police Discretion.<br/>
OR<br/>
Jail time at Police Discretion.<br/>
<br/>
"
]
];
player createDiaryRecord ["Laws", 
[
"13# Terrorism", 
"
If a player is/has commited terrorism, then they will be fined or imprisoned.<br/>
Fine : Police Discretion.<br/>
OR<br/>
Jail time at Police Discretion.
<br/>
"
]
];
player createDiaryRecord ["Laws", 
[
"12# Robbery", 
"
If a player is found to have stolen/stealing something.<br/>
Fine : Police Discretion + Compensation to the player.
<br/>
"
]
];
player createDiaryRecord ["Laws", 
[
"11# Driving/Flying without a license", 
"
If a player is found to be driving or flying without the correct license then they are to be charged as following.<br/>
Fine : Police Discretion (Car or other appropriate land vehicle license)<br/>
Fine : Police Discretion (Air Vehicle)<br/>
OR<br/>
Jail time at Police Discretion.<br/>
<br/>
"
]
];
player createDiaryRecord ["Laws", 
[
"10# Deserted vehicle/un-lawfull parking. ", 
"
If a vehicle is found to be deserted it is to be impounded and the driver to be fined at police discretion<br/>
<br/>
If a vehicle is parked in a dangerous place (More than half the vehicle on the road, or parked vertically onto the side of the road + sticking out)<br/>
If the vehicle meets these conditions then the driver must pay a fine at Police Discretion and or it can be inpounded.
<br/>
"
]
];
player createDiaryRecord ["Laws", 
[
"9# Possession of Drugs", 
"
A civilian with drugs in their possesion.<br/>
Fine : = Police Discretion.<br/>
OR<br/>
Jail time = Police Discretion.
<br/>
"
]
];
player createDiaryRecord ["Laws", 
[
"8# Unsafe Conduct", 
"
Behaving in a manor that puts the public in danger.<br/>
Eg. Un holstered weapon in public, anything leading to another member of the public to feel insecure.<br/>
Fine : Police Discretion.<br/>
OR<br/>
Jail Police Discretion.
<br/>
"
]
];
player createDiaryRecord ["Laws", 
[
"7# Vehicle Theft", 
"
Vehicle Theft.<br/>
Fine : Police Discretion.<br/>
+ 1.5X Price of vehicle to player.<br/>
OR<br/>
Jail Police at Discretion not to exceed 15 min.
<br/>
"
]
];
player createDiaryRecord ["Laws", 
[
"6# Evading Police", 
"
Evasion of police for any reason.<br/>
Fine : Police Discretion.<br/>
OR<br/>
Jail Police at Discretion not to exceed 15 min.
<br/>
"
]
];
player createDiaryRecord ["Laws", 
[
"5# Failure to stop", 
"
Failure to stop for an officer.<br/>
Fine : Police Discretion.<br/>
OR<br/>
Jail Police at Discretion not to exceed 15 min.
<br/>
"
]
];
player createDiaryRecord ["Laws", 
[
"4# Murder", 
"
Murder, includes assasination's.<br/>
Fine : Police Discretion.<br/>
OR<br/>
Jail Police at Discretion not to exceed 15 min.<br/>
AND<br/>
Weapons destroyed/confiscated.
<br/>
"
]
];
player createDiaryRecord ["Laws", 
[
"3# Manslaughter", 
"
Manslaughter<br/>
Fine : Police Discretion.<br/>
+ Compensation to player killed.<br/>
OR<br/>
Jail Police at Discretion not to exceed 15 min.<br/>
If commited with vehicle then vehicle will be impounded.<br/>
<br/>
"
]
];
player createDiaryRecord ["Laws", 
[
"2# Driving Recklessly", 
"
<br/>
Driving Recklessly (Driving on the wrong side of road, causing an accident)<br/>
Fine : Police Discretion.<br/>
+ Compensation if called for.
<br/>
"
]
];

player createDiaryRecord ["Laws", 
[
"1# Speeding", 
"
<br/>
Speeding:<br/>
Travelling above 80km/hr in TOWN or 110 outside of town (press U key to check speed).  <br/>
Fine : Police Discretion.
<br/>
"
]
];

player createDiaryRecord ["Laws", 
[
"Rules Around Jail Times", 
"
<br/>
Maximum jail time is 15 minutes All jail times are at Police Discretion.<br/>
<br/>
"
]
];
player createDiaryRecord ["Laws", 
[
"Breaking server rules.", 
"
You will be kicked and\or banned.

<br/>
"
]
];

/*player createDiaryRecord ["changelog", 
[
"LMC Chernarus v1.7", 
"
<br/>
<br/>
<br/>
"
]
];

player createDiaryRecord ["changelog", 
[
"LMC Chernarus v1.3", 
"
<br/>
"
]
];*/

player createDiaryRecord ["job", 
[
"Bounty Hunter", 
"
Same as the original bountyhunter but more money on paycheck.
<br/>
Extra Money: $200 more money for every paycheck.
<br/>
"
]
];

player createDiaryRecord ["job", 
[
"Doctor", 
"
You can make medkits for $25.
<br/>
Extra Money: $850 more money for every paycheck.
<br/>
"
]
];

player createDiaryRecord ["job", 
[
"Base Builder", 
"
You have your own menu to buy base materials on the spot. Do not place materials on roads to block them. You can get kicked for that.
<br/>
Extra Money: $350 more money for every paycheck.
<br/>
"
]
];

player createDiaryRecord ["job", 
[
"Mechanic", 
"
You can make large repair kits for $40 and get more money per paycheck like otehr jobs.
<br/>
Extra Money: $330 more money for every paycheck.
<br/>
"
]
];

/*player createDiaryRecord ["job", 
[
"Bodyguard", 
"
You work for an employer (either civ or cop) and do what they say. You are not allowed to do anything illegal without authorization from employer. You are not allowed to give your gun to other civs.
<br/>
Extra Money: bodyguard can discuss with employer what their wage will be. Salaries are not increased.
<br/>
"
]
];*/

player createDiaryRecord ["job", 
[
"Armored Car Driver", 
"
You can buy the HMMWV at car shops. You can also lend services to people such as armored transport but may not use the HMMWV from car shop to deathmatch people by running over them.
<br/>
Extra Money: driver can discuss with employer what their wage will be. Salaries are not increased.
<br/>
Side Note: this is more like a license and, when pressing 8 on the keyboard, you do not lose it. You can also have a job along with this license.
<br/>
"
]
];

/*player createDiaryRecord ["job", 
[
"Business Man Roleplay", 
"
This job is intented for roleplay so use your imagination
<br/>
Business men can take out larger loans (less than $400,000)
<br/>
---Roleplay Jobs Ideas---
<br/>
Loan shark
<br/>
Car tuner
<br/>
Weapon Dealer (Thinking outside the box)
<br/>
Traveling Salesman
<br/>
"
]
];*/

player createDiaryRecord ["job", 
[
"Basic Controls and Rules", 
"
You can get a job from the courtyard infront of the civ spawn.
<br/>
Press 8 key on keyboard with Chernarus Life keys on to leave your job.
<br/>
"
]
];

player createDiaryRecord ["credits", 
[
"Credit", 
"
-Edited by Stealthstick and Razgriz for [LMC].
<br/>
"
]
];

player createDiaryRecord ["insurance", 
[
"Auto Insurance", 
"
Press the \ key (one above enter not /) while in a vehicle to repair the car. It costs $300 from savings and takes 15 seconds to fix.
<br/>
"
]
];

player createDiaryRecord ["changelog", 
[
"Plans for future", 
"
porting over to Arma 3.
<br/>
"
]
];

player selectDiarySubject "rules"; 











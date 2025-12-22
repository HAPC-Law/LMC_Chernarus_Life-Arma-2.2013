private ["_emptyshop","_fs","_is","_pub","_gs","_es","_cu","_af","_cs","_ps","_av","_ts","_as","_mfs","_bs1","_bs2","_bs3","_tbs","_bc","_td","_ms","_bb","_rs","_gds","_os","_ws","_db1","_db2","_db3","_dsc","_dsm","_dsl","_dsh","_ca1","_sa1","_cv","_sv1","_sv","_drs","_ss","_ec","_hs","_kv","_ig","_tv","_tcv","_ees","_tchs","_logs","_copwep","_medcar","_talmon","_lms","_tdf","_twf","_copshop","_copshop_patrol","_copshop_response","_copshop_sobr","_terrorshop","_gangshop_buy","_druggie","_swatair","_theft","_copbasebuilder"];
if(isServer)then

{

INV_itemstocks =

[
//fs
[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1],
[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1],
[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1],
[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1],
[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1],
//is
[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1],
[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1],
[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1],
[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1],
[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1],
[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1],
[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1],
//pub
[3,1,1,3,1,3,3],
//gs
-1,
//es
[50,50,50],
//cu
[-1,-1,-1,-1,-1,-1,-1,-1],
[-1,-1,-1,-1,-1,-1,-1,-1],
//af
-1,
//cs
[-1,-1,-1,-1,-1,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15],
[-1,-1,-1,-1,-1,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15],
[-1,-1,-1,-1,-1,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15],
[-1,-1,-1,-1,-1,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15],
//ps
[2,2,2,2,2,2,2],
//ts
[3,3,3,3,3,3,3],
//as
[3,3,3],
//mfs
[-1,-1],
//bs1
[4,4,2,2,2],
//bs2
[4,4,2,2,2],
//bs3
[4,4,2,2,2],
//tbs
[-1,-1,5],
//bc
-1,
//ms
[15,15,10],
//rs
[100,100,100],
//gds
-1,
//os
-1,
//ws
-1,
//ga
-1,
-1,
-1,
//db1
[0,0,0],
[0,0],
[0],
//ds
-1,
-1,
-1,
-1,
//ca1
[-1,-1],
//sa1
-1,
//cv
-1,
-1,
//sv1
[-1,-1,-1,-1,-1,-1],
//ca
-1,
-1,
//cp
-1,
-1,
//cr
-1,
//cps
-1,
//terrorshop
-1,
//drs
[15,15,15,15,25],
//ss
[-1],
//ec
-1,
//hs
[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1],
//kv
-1,
//ig
[5,5,5],
//tv
[-1,-1,-1,-1,-1,-1,-1],
//tcv
[-1,-1,-1,-1],
//ees
[-1,-1,-1],
//tchs
-1,
//LOGS
[-1],
//copweps
-1,
//medcar
-1,
//talmon
-1,
//lms
-1,
//talon def seller
-1,
//ter wep shop
-1,
-1,
[100,20,5,-1,-1,-1],
-1,
-1

];

publicvariable "INV_itemstocks";

};

INV_itemmaxstocks =

[
//fs
[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1],
[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1],
[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1],
[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1],
[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1],
//is
[100000,150000,350000,200000,200000,80000,200000,20000,20000,10000,10000],
[100000,150000,350000,200000,200000,80000,200000,20000,20000,10000,10000],
[100000,150000,350000,200000,200000,80000,200000,20000,20000,10000,10000],
[100000,150000,350000,200000,200000,80000,200000,20000,20000,10000,10000],
[100000,150000,350000,200000,200000,80000,200000,20000,20000,10000,10000],
[100000,150000,350000,200000,200000,80000,200000,20000,20000,10000,10000],
[100000,150000,350000,200000,200000,80000,200000,20000,20000,10000,10000],
//pub
[1005,500,500,100,500,1005,1500],
//gs
-1,
//es
[100,100,100],
//cu
[-1,-1,-1,-1,-1,-1,-1],
[-1,-1,-1,-1,-1,-1,-1],
//cu
-1,
//cs
[20005,2005,200005,500000,500000,5000000,500000,500000,50000,50000,50000,50000,500000,50000,50000,5000,5000,50000,50000,50000,50000,50000,50000],
[20005,2005,200005,500000,500000,5000000,500000,500000,50000,50000,50000,50000,500000,50000,50000,5000,5000,50000,50000,50000,50000,50000,50000],
[20005,2005,200005,500000,500000,5000000,500000,500000,50000,50000,50000,50000,500000,50000,50000,5000,5000,50000,50000,50000,50000,50000,50000],
[20005,2005,200005,500000,500000,5000000,500000,500000,50000,50000,50000,50000,500000,50000,50000,5000,5000,50000,50000,50000,50000,50000,50000],
//ps
[5,5,5,5,5,5,5],
//ts
[15,15,15,15,15,15,15],
//as
[15,15,15],
//mfs
[-1,-1],
//bs1
[4,4,2,2,2],
//bs2
[4,4,2,2,2],
//bs3
[4,4,2,2,2],
//tbs
[-1,-1,5],
//bc
-1,
//ms
[30,30,20],
//rs
[300,300,300],
//gds
-1,
//os
-1,
//ws
-1,
//ga
-1,
-1,
-1,
//db1
[6,4,3],
[15,10],
[2],
//ds
-1,
-1,
-1,
-1,
//ca1
[-1,-1],
//sa1
-1,
//cv
-1,
-1,
//sv1
[-1,-1,-1,-1,-1,-1],
//ca
-1,
-1,
//cp
-1,
-1,
//cr
-1,
//cps
-1,
//terrorshop
-1,
//drs
[15,15,15,15,15],
//ss
[-1],
//ec
-1,
//hs
[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1],
//kv
-1,
//ig
[30,30,30],
//tv
[-1,-1,-1,-1,-1,-1,-1],
//TCV
[-1,-1,-1,-1],
//ees
[-1,-1,-1],
//tchs
-1,
//logs
[-1],
//copweps
-1,
//medcar
-1,
//talmon
-1,
//lms
-1,
//tallon def seller
-1,
//ter wep shop
-1,
-1,
[5000,500,100,-1,-1,-1],
-1,
-1
];

// Shop items

_emptyshop = [];
_fs = ["kanister", "kleinesreparaturkit", "reparaturkit","sparetires","vclammo","cocacola","Pepsi","Sprite","drpepper","Chips","Donut","beer","vodka","smirnoff","wiskey"];
_is = ["Apfel","Apfelkuchen","blowfish", "mackerel", "herring", "bass", "Bread", "rabbit", "boar", "medikit", "handy"];
_pub = ["beer","beer2","vodka","smirnoff","wiskey","wine","wine2"];
_gs = ["Bodyarmor1","Makarov","8Rnd_9x18_Makarov","M9", "Rnd_9x19_M9", "Colt1911", "Rnd_45ACP_1911","Saiga12K", "Rnd_B_Saiga12_74Slug", "MP5A5","30Rnd_9x19_MP5","Huntingrifle", "x_22_LR_17_HMR", "MakarovSD","8Rnd_9x18_MakarovSD"];
_es = ["Binocular", "NVGoggles", "GPS"];
_cu = ["nitro", "supgrade1", "supgrade2", "supgrade3", "supgrade4", "supgrade5", "supgrade10","supgrade20"];
_af = ["Cheeseburger", "steakfries", "Burrito", "Chips", "Pepsi", "Sprite", "drpepper","GymMem2","GymMem3","GymMem4"];
_cs = ["MMT_Civ","TT650_Civ","TT650_Ins","HMMWV_Ambulance","HMMWV","Tractor","Skoda","SkodaBlue","SkodaRed","SkodaGreen","Lada_base","Lada2","Car_hatchback","Car_Sedan","VWGolf","Lada1_TK_CIV_EP1","Lada2_TK_CIV_EP1","VolhaLimo_TK_CIV_EP1","Volha_1_TK_CIV_EP1","Volha_2_TK_CIV_EP1","S1203_TK_CIV_EP1"];
_ps = ["datsun1_civil_1_open", "datsun1_civil_2_covered", "hilux1_civil_1_open", "hilux1_civil_2_covered", "UAZ_RU", "HMMWV"];
_av = ["Pickup_PK_INS", "HMMWV"];
_ts = ["Ikarus", "UralCivil", "UralCivil2", "V3S_Civ", "KamazOpen","MTVR","MtvrRepair"];
_as = ["Mi17_Civilian","Mi17_medevac_CDF","MV22"];
_mfs = ["F35B"];
_bs1 = ["PBX","Zodiac","Smallboat_1","Smallboat_2","Fishing_Boat"];
_bs2 = ["PBX","Zodiac","Smallboat_1","Smallboat_2","Fishing_Boat"];
_bs3 = ["PBX","Zodiac","Smallboat_1","Smallboat_2","Fishing_Boat"];
_tbs = ["PBX", "Zodiac", "RHIB"];
_bc = ["PBX", "Zodiac", "RHIB","RHIB2Turret"];
_td = ["strangemeat", "medikit"];
_ms = ["Shovel","Pickaxe","JackHammer"];
_bb = ["factory","officebuilding","barrack","smallhouse","smallhouse2"];
_rs = ["iron","copper","oil"];
_gds = ["Diamondring","EDiamondring"];
_os = ["OilBarrel"];
_ws = ["Whale","Whale1"];
_db1 = ["marijuana","cocaine","lsd"];
_db2 = ["cocaine","lsd"];
_db3 = ["heroin","marijuana"];
_dsc = ["cocaine"];
_dsm = ["marijuana"];
_dsl = ["lsd"];
_dsh = ["heroin"];
_ca1 = ["Mi17_medevac_CDF","MV22"];
_sa1 = ["MH60S","AH64D","Pchela1T","UH1Y","AH1Z"];
_cv = ["MMT_USMC","M1030","LadaLM","hilux1_civil_3_open","UAZ_CDF","Kamaz","GAZ_Vodnik_MedEvac","MTVR","MtvrRepair","MtvrReammo","MtvrRefuel"];
//_sv1 = ["HMMWV","HMMWV_Armored","BRDM2_CDF","GAZ_Vodnik_HMG","BMP2_Ambul_CDF","HMMWV_Avenger"];
_sv1 = ["HMMWV","HMMWV_Armored","BRDM2_CDF","GAZ_Vodnik_HMG","HMMWV_Avenger"];
_sv = ["HMMWV","HMMWV_Armored","HMMWV_Avenger","BRDM2_INS","T72_INS","BRDM2_ATGM_CDF"];
_drs = ["heroin","lsd","marijuana","cocaine","whale"];
_ss = ["steel"];
_ec = ["ebauteile"];
_hs = ["house","house2","hideout","campeast","MASH","Land_vez","fireplace","Barricade","Tor","Jaegerstand","Blechzaun","Camonet","bunkersmall"];
_kv = ["Kaviar"];
_ig = ["OilBarrel","steel","ebauteile"];
_tv = ["MMT_Civ","Offroad_DSHKM_INS","Mi17_CDF","GAZ_Vodnik","Ural_ZU23_CDF","BRDM2_ATGM_CDF","Mi17_rockets_RU"];
_tcv = ["Offroad_DSHKM_INS","BRDM2_INS","Mi17_CDF","Offroad_SPG9_Gue"];
_ees = ["Body","Hanged","KORD"];
_tchs = ["MH60S","HMMWV","Mi17_medevac_CDF","MV22","GAZ_Vodnik","Ka52Black"];
_logs = ["Axe_woodblock"];
_copwep = ["M2StaticMG","Searchlight","Hhedgehog_concrete","Hedgehog"];
_medcar = ["GAZ_Vodnik_MedEvac","Lada1"];
_talmon = ["whale1","moneh"];
_lms = ["Landmine"];
_tdf = ["GuerillaCacheBox","USSpecialWeaponsBox","USLaunchersBox","USOrdnanceBox","SpecialWeaponsBox","Hhedgehog_concreteT","BarricadeT","nitro","supgrade10","supgrade20","NVGoggles","GPS"];
_twf = ["Binocular", "NVGoggles","GPS","Huntingrifle1","x_22_LR_17_HMR","AK74","AK74GL","AKS74U","AKS74pso","AKS_Gold","30Rnd_545x39_AK","30Rnd_762x39_AK47","1Rnd_HE_GP25","SVD","10Rnd_762x54_SVD","PK","100Rnd_762x54_PK","RPG7V1","Strela","Strela_mag","PG7V","HandGrenade_East"];
_copshop = ["Binocular","GPS","NVGoggles","M1014","8Rnd_B_Beneli_74Slug","Colt1911","Rnd_45ACP_1911","M9","Rnd_9x19_M9","Donut","medikit","kleinesreparaturkit","reparaturkit","kanister","defuser","waffentasche","signtape","sparetires"];
_copshop_patrol = ["Bodyarmor1","Bodyarmor2","Bodyarmor3","M16A2","30Rnd_556x45_Stanag","SmokeShell","nitro","supgrade1","supgrade2","supgrade3","supgrade4","supgrade5","supgrade10","supgrade20"];
_copshop_response = ["M9SD","15Rnd_9x19_M9SD","MP5SD","30rnd_9x19_MP5SD","VSS_vintorez","10Rnd_9x39_SP5_VSS","Bizon_Silenced","64Rnd_9x19_SD_Bizon"];
_copshop_sobr = ["M4A1_HWS_GL","M4A1_AIM_SD_camo","30Rnd_556x45_StanagSD","30Rnd_556x45_Stanag","1Rnd_HE_M203","1Rnd_Smoke_M203","FlareRed_M203","M4SPR","20Rnd_556x45_Stanag","M249","200Rnd_556x45_M249","HandGrenade_East","M136","M136_mag","SVD","10Rnd_762x54_SVD","Stinger","Stinger_mag","PipeBomb"];
_terrorshop = ["Binocular","GPS","NVGoggles","AK_47_M","30Rnd_762x39_AK47","PK","100Rnd_762x54_PK","HandGrenade_East","RPG7V","PG7V","Strela","Strela_mag","PipeBomb","medikit","kanister","reparaturkit","lighter","strangemeat","selbstmordbombe","zeitzuenderbombe","fernzuenderbombe","aktivierungsbombe","geschwindigkeitsbombe","lockpick"];
_gangshop_buy = ["Binocular","GPS","NVGoggles","Colt1911","Rnd_45ACP_1911","Saiga12K","Rnd_B_Saiga12_74Slug","AK_47_M","30Rnd_762x39_AK47","HandGrenade_East","medikit","kleinesreparaturkit","reparaturkit","kanister","lockpick"];
_druggie = ["Special_Brownie", "Xanax_Pills","Painkiller","GymMem5"];
_swatair = ["MH60S","Pchela1T","UH1Y","AH1Z"];
_theft = ["lockpick","lighter","supgrade5","Fuelline","Knife","Sugar"];
_copbasebuilder = ["Sign_Checkpoint","roadblock","FortRazorWireCop","Satelit","bunkersmall","fortenvelopesmall","roadbarrierlong","roadbarrierlight","landconelight","bargate","Jaegerstand","Sandsacke","Baracke","city_spikestrip"];

INV_ItemShops = [
[fuelshop1,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop2,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop3,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop4,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop6,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],

[shop1,"Item Shop",dummyobj,dummyobj,_is,_is,true],
[shop2,"Item Shop",dummyobj,dummyobj,_is,_is,true],
[shop3,"Item Shop",dummyobj,dummyobj,_is,_is,true],
[shop4,"Item Shop",dummyobj,dummyobj,_is,_is,true],
[shop5,"Item Shop",dummyobj,dummyobj,_is,_is,true],
[shop6,"Item Shop",dummyobj,dummyobj,_is,_is,true],
[shopST,"Item Shop",dummyobj,dummyobj,_is,_is,true],

[pub1,"Pub",dummyobj,dummyobj,_pub,_pub,true],

[gunshop1,"Gun Shop",gunbox1,dummyobj,_gs,_gs,true],

[equipshop,"Equipment Shop",equipbox,dummyobj,_es,_es,true],

[tuning1,"Car Upgrades",dummyobj,dummyobj,_cu,_cu,true],
[tuning2,"Car Upgrades",dummyobj,dummyobj,_cu,_cu,true],

[americanfoods,"LMC Foods",dummyobj,dummyobj,_af,_af,true],

[carshop1,"Car Shop",dummyobj,carspawn1,_cs,_cs,true],
[carshop2,"Car Shop",dummyobj,carspawn2,_cs,_cs,true],
[carshop3,"Car Shop",dummyobj,carspawn3,_cs,_cs,true],
[carshop4,"Car Shop",dummyobj,carspawn4,_cs,_cs,true],

[pickupshop1,"Pickup + Jeep Shop",dummyobj,pickupspawn1,_ps,_ps,true],
[truckshop,"Truck Shop",dummyobj,truckspawn,_ts,_ts,true],
[airshop,"Air Shop",dummyobj,asairspawn,_as,_as,true],
[militaryfightershop,"Military Fighter Shop",dummyobj,asairspawn,_mfs,_mfs,true],

[boatshop1, "Boat Shop",dummyobj,boatspawn1,_bs1,_bs1,true],
[boatshop2, "Boat Shop",dummyobj,boatspawn2,_bs2,_bs2,true],
[boatshop3, "Boat Shop",dummyobj,boatspawn3,_bs3,_bs3,true],
[tboatshop, "Terrorist Boat Shop",dummyobj,tboatspawn,_tbs,_tbs,true],
[cboatshop,"Boat Shop",dummyobj,cboatspawn,_bc,_bc,true],

[Oil_1,"Mining equipment",dummyobj,dummyobj,_ms,_ms,true],
[resourcesell,"Sell Resources",dummyobj,dummyobj,_rs,_rs,true],
[DiamondShop,"Pawn Shop",dummyobj,dummyobj,_emptyshop,_gds,true],
[OilSell1,"Oil Dealer", dummyobj,dummyobj, _emptyshop,_os,true],

[whalesell,"Sell Whale",dummyobj,dummyobj,_emptyshop,_ws,true],

[gangarea1,"Gang Shop",gangbox1,dummyobj,_gangshop_buy,_gangshop_buy,false],
[gangarea2,"Gang Shop",gangbox2,dummyobj,_gangshop_buy,_gangshop_buy,false],
[gangarea3,"Gang Shop",gangbox3,dummyobj,_gangshop_buy,_gangshop_buy,false],

[gangarea1,"Drug Trafficking",dummyobj,dummyobj,_db1,_emptyshop,true],
[gangarea2,"Drug Trafficking",dummyobj,dummyobj,_db2,_emptyshop,true],
[gangarea3,"Drug Trafficking",dummyobj,dummyobj,_db3,_emptyshop,true],

[cdrugsell,"Sell Cocaine",dummyobj,dummyobj,_emptyshop,_dsc,true],
[mdrugsell,"Sell marijuana",dummyobj,dummyobj,_emptyshop,_dsm,true],
[ldrugsell,"Sell LSD",dummyobj,dummyobj,_emptyshop,_dsl,true],
[hdrugsell,"Sell Heroin",dummyobj,dummyobj,_emptyshop,_dsh,true],

[copair,"Police Air-Vehicle Shop",dummyobj, cairspawn,_ca1,_ca1,true],
[swatair,"SWAT Air-Vehicles Shop",dummyobj, saairspawn,_swatair,_swatair,true],

[copcar,"Police Vehicle Shop",dummyobj, ccarspawn,_cv,_cv,true],
[copcar2,"Police Vehicle Shop",dummyobj, ccarspawn2,_cv,_cv,true],

[swatcar,"SWAT Vehicle Shop",dummyobj, scarspawn,_sv1,_sv1,true],

[copbasic,"Generic Police Shop",copbasic,dummyobj, _copshop,_copshop,false],
[copbasic2,"Generic Police Shop",copbasic2,dummyobj, _copshop,_copshop,false],

[coppatrol,"Patrol-Officer",coppatrol,dummyobj,_copshop_patrol,_copshop_patrol,true],
[coppatrol2,"Patrol-Officer",coppatrol2,dummyobj,_copshop_patrol,_copshop_patrol,true],
[copcriminal,"Criminal Response (Stun Weps)",copcriminal,dummyobj,_copshop_response,_copshop_response,true],
[copswat,"SWAT",copswat,dummyobj,_copshop_sobr,_copshop_sobr,true],
[terrorshop,"Terrorist Shop",tgunbox,dummyobj,_terrorshop,_terrorshop,true],
[drugseller,"Buy Drugs",dummyobj,dummyobj,_drs,_emptyshop,true],
[steelseel,"Export Steel",dummobj,dummyobj,_ss,_ss,true],
[electronicseel,"Export Electronic Components",dummobj,dummyobj,_emptyshop,_ec,true],
[markler,"House Shop",dummobj,dummyobj,_hs,_hs,true],
[kaviarverkauf,"Sell Caviar",dummyobj,dummyobj,_emptyshop,_kv,true],
[Industriegueter,"Industrial Goods",dummyobj,dummyobj,_ig,_ig,true],
[tairshop,"Terrorist Vehicle Shop",dummyobj,tairspawn,_tv,_tv,true],
[TalonVS,"LMC Clan Vehicle Shop",dummyobj,Tcv,_tcv,_tcv,true],
[EasterEggShop,"Easter Egg Shop",dummyobj,dummyobj,_ees,_ees,true],
[TalonHS,"Donor Vehicle Shop",dummyobj,tcHs,_tchs,_tchs,true],
[LOGSELLER,"Log Seller",dummyobj,dummyobj,_logs,_logs,true],
[copwe,"Police Defence Seller",dummyobj,dummyobj,_copwep,_copwep,true],
[medcar,"Medic Vehicle Shop",dummyobj,medcars,_medcar,_medcar,true],
[garcan," ",dummyobj,dummyobj,_talmon,_talmon,true],
[landmines,"Police IED Disposal",dummyobj,dummyobj,_emptyshop,_lms,true],
[talondef,"Donator Only Shop",donorbox,dummyobj,_tdf,_tdf,true],
[weaponfactory,"Terrorist Weapon Shop",wfgunbox,dummyobj,_twf,_twf,true],
[drugfood,"Imported Drugs",dummyobj,dummyobj,_druggie,_druggie,true],
[theft,"Vehicle Theft Tools",dummyobj,dummyobj,_theft,_theft,true],
[copbasebuild,"Base-Builder",coppatrol,dummyobj,_copbasebuilder,_copbasebuilder,true],
[drugfood2,"Imported Drugs",dummyobj,dummyobj,_druggie,_druggie,true]
];

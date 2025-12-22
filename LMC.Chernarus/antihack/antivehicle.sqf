private ["_PUID","_UID"];
_UID = getPlayerUID player;
_PUID = format["%1", _UID];
while {true} do
{
    sleep 5;
    /*anti vehicle*/
    /*car*/
    if((vehicle player iskindof "BIS_alice_emptydoor")
    || (vehicle player iskindof "Bus")
    || (vehicle player iskindof "FoldChair_with_Cargo")
    || (vehicle player iskindof "HMMWV_M2")
    || (vehicle player iskindof "HMMWV_MK19")
    || (vehicle player iskindof "HMMWV_TOW")
    || (vehicle player iskindof "Offroad_DSHKM_Gue")
    || (vehicle player iskindof "PaperCar")
    || (vehicle player iskindof "Pickup_PK_GUE")
    || (vehicle player iskindof "TowingTractor")
    || (vehicle player iskindof "tractorOld")
    /*Truck*/
    || (vehicle player iskindof "KamazReammo")
    || (vehicle player iskindof "KamazRefuel")
    || (vehicle player iskindof "KamazRepair")
    || (vehicle player iskindof "GRAD_Base")
    || (vehicle player iskindof "GRAD_CDF")
    || (vehicle player iskindof "GRAD_INS")
    || (vehicle player iskindof "GRAD_RU")
    || (vehicle player iskindof "Ural_CDF")
    || (vehicle player iskindof "Ural_INS")
    || (vehicle player iskindof "UralOpen_CDF")
    || (vehicle player iskindof "UralOpen_INS")
    || (vehicle player iskindof "UralReammo_CDF")
    || (vehicle player iskindof "UralReammo_INS")
    || (vehicle player iskindof "UralRefuel_CDF")
    || (vehicle player iskindof "UralRefuel_INS")
    || (vehicle player iskindof "UralRepair_CDF")
    || (vehicle player iskindof "UralRepair_INS")
    || (vehicle player iskindof "Ural_ZU23_Gue")
    || (vehicle player iskindof "Ural_ZU23_INS")
    || (vehicle player iskindof "WarfareSupplyTruck_RU")
    || (vehicle player iskindof "WarfareSupplyTruck_USMC")
    || (vehicle player iskindof "WarfareSupplyTruck_CDF")
    || (vehicle player iskindof "WarfareSupplyTruck_Gue")
    || (vehicle player iskindof "WarfareSupplyTruck_INS")
    || (vehicle player iskindof "WarfareSalvageTruck_RU")
    || (vehicle player iskindof "WarfareSalvageTruck_USMC")
    || (vehicle player iskindof "WarfareSalvageTruck_CDF")
    || (vehicle player iskindof "WarfareSalvageTruck_Gue")
    || (vehicle player iskindof "WarfareSalvageTruck_INS")
    || (vehicle player iskindof "WarfareReammoTruck_RU")
    || (vehicle player iskindof "WarfareReammoTruck_USMC")
    || (vehicle player iskindof "WarfareReammoTruck_CDF")
    || (vehicle player iskindof "WarfareReammoTruck_Gue")
    || (vehicle player iskindof "WarfareReammoTruck_INS")
    || (vehicle player iskindof "V3S_Gue")
    || (vehicle player iskindof "UAZ_AGS30_Base")
    || (vehicle player iskindof "UAZ_AGS30_CDF")
    || (vehicle player iskindof "UAZ_AGS30_INS")
    || (vehicle player iskindof "UAZ_AGS30_RU")
    || (vehicle player iskindof "UAZ_MG_Base")
    || (vehicle player iskindof "UAZ_MG_CDF")
    || (vehicle player iskindof "UAZ_MG_INS")
    || (vehicle player iskindof "UAZ_SPG9_Base")
    || (vehicle player iskindof "UAZ_SPG9_INS")
    || (vehicle player iskindof "UAZ_INS")
    || (vehicle player iskindof "BRDM2_Gue")
    || (vehicle player iskindof "BRDM2_ATGM_INS")
    || (vehicle player iskindof "BRDM2_HQ_Gue")
    || (vehicle player iskindof "BTR90_Base")
    || (vehicle player iskindof "BTR90")
    || (vehicle player iskindof "BTR90_HQ")
    || (vehicle player iskindof "LAV25_Base")
    || (vehicle player iskindof "LAV25")
    || (vehicle player iskindof "LAV25_HQ")
    /*Motorcycle*/
    || (vehicle player iskindof "TT650_Gue")
    /*Tank*/
    || (vehicle player iskindof "2S6M_Tunguska")
    || (vehicle player iskindof "APC")
    || (vehicle player iskindof "Tracked_APC")
    || (vehicle player iskindof "AAV")
    || (vehicle player iskindof "AAV_cutscene")
    || (vehicle player iskindof "BMP2_Base")
    || (vehicle player iskindof "BMP2_Ambul_Base")
    || (vehicle player iskindof "BMP2_Ambul_CDF")
    || (vehicle player iskindof "BMP2_Ambul_INS")
    || (vehicle player iskindof "BMP2_HQ_Base")
    || (vehicle player iskindof "BMP2_HQ_CDF")
    || (vehicle player iskindof "BMP2_HQ_INS")
    || (vehicle player iskindof "BMP2_CDF")
    || (vehicle player iskindof "BMP2_Gue")
    || (vehicle player iskindof "BMP2_INS")
    || (vehicle player iskindof "BMP3")
    || (vehicle player iskindof "M1A1")
    || (vehicle player iskindof "M1A2_TUSK_MG")
    || (vehicle player iskindof "MLRS")
    || (vehicle player iskindof "T34")
    || (vehicle player iskindof "T72_Base")
    || (vehicle player iskindof "T72_CDF")
    || (vehicle player iskindof "T72_Gue")
    || (vehicle player iskindof "T72_INS")
    || (vehicle player iskindof "T72_RU")
    || (vehicle player iskindof "T90")
    || (vehicle player iskindof "ZSU_Base")
    || (vehicle player iskindof "ZSU_CDF")
    || (vehicle player iskindof "ZSU_INS")
    /*Heli*/
    || (vehicle player iskindof "AH64D_EP1")
    || (vehicle player iskindof "BAF_Apache_AH1_D")
    || (vehicle player iskindof "AH64D_Sidewinders")
    || (vehicle player iskindof "AW159_Lynx_BAF")
    || (vehicle player iskindof "BAF_Merlin_HC3_D")
    || (vehicle player iskindof "CruiseMissile1")
    || (vehicle player iskindof "Mi17_medevac_Ins")
    || (vehicle player iskindof "Mi17_medevac_RU")
    || (vehicle player iskindof "Mi24_Base")
    || (vehicle player iskindof "Mi24_Base_RU")
    || (vehicle player iskindof "Mi24_V")
    || (vehicle player iskindof "Mi24_P")
    || (vehicle player iskindof "Mi24_Base_CDF")
    || (vehicle player iskindof "Mi24_D")
    || (vehicle player iskindof "UH1Y_cutscene")
    /*Plane*/
    || (vehicle player iskindof "A10")
    || (vehicle player iskindof "AV8B2")
    || (vehicle player iskindof "AV8B")
    /*|| (vehicle player iskindof "C130J")*/
    || (vehicle player iskindof "Su25_base")
    || (vehicle player iskindof "Su25_CDF")
    || (vehicle player iskindof "Su25_Ins")
    || (vehicle player iskindof "Su39")
    || (vehicle player iskindof "Su34")
    || (vehicle player iskindof "Chukar")
    || (vehicle player iskindof "Chukar_AllwaysEnemy")
    || (vehicle player iskindof "MQ9PredatorB")
    || (vehicle player iskindof "CruiseMissile2")
    /*boat*/
    || (vehicle player iskindof "BuoySmall")
    || (vehicle player iskindof "BuoyBig")
    || (vehicle player iskindof "SeaFox")
    || (vehicle player iskindof "SeaFox_AllwaysEnemy")
    || (vehicle player iskindof "SmallShip")
    || (vehicle player iskindof "BigShip")) then
    {
        [format["Stealthstick's antihack: (%1) is using a hacked vehicle! - (%2)",(name player),typeof (vehicle player)]] call fn_netHint;
        [format["Stealthstick's antihack: (%1) is using a hacked vehicle! - (%2)",(name player),typeof (vehicle player)]] call fn_netChat;
        PName = (name player);
        PID = _UID;
        publicVariable "PName";
        publicVariable "PID";
        server setVehicleInit 'if (isServer) then {diag_log format["Antihack Server Log - Name: (%1) ID: (%2) was flagged using a hacked vehicle: (%3)",PName,PID ,typeof (vehicle player)];};';
        processInitCommands;
        clearVehicleInit server;
        deletevehicle (vehicle player);
        execvm "antihack\punish.sqf";
        player setvariable ["lockme", 1];
        execvm "antihack\lockloop.sqf";
        isHacker = isHacker + [_PUID];
        publicVariable "isHacker";
    };
};
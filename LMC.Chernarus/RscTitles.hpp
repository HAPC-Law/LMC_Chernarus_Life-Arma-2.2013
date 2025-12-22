#define screenwidth  (1 - safeZonex*2)
#define screenheight (1 - safeZoney*2)

class RPP_Dlg_UI
{
    idd = 100;
    movingEnable = true;
    controlsBackground[] = { Background, moneyText };
    duration = 100000000;
    fadein = 0;
    name = "RPP_Dlg_UI";
    objects[] = { };
    controls[] = { };
    onLoad = "RPP_display_ui = _this;";
    class Background : RPP_BackgroundFill
    {
        x = 0.0925;
        y = safeZoneY;
        w = 0.82;
        h = 0.065;
        text = "";
        colorBackground[] = {0, 0, 0, 0.8};
        colorText[] = {1, 1, 1, 1};
    };
    class moneyText : RPP_StructuredText
    {
        idc = 1;
        x = 0.135;
        y = safeZoneY;
        w = 0.75;
        h = 0.3;
        size = 0.025;
        text = "";
    };
};
class RPP_Dlg_Progress
{
    idd = 400;
    movingEnable = true;
    controlsBackground[] = { progressText };
    duration = 100000000;
    fadein = 0;
    name = "RPP_Dlg_Progress";
    objects[] = { };
    controls[] = { };
    onLoad = "RPP_display_progress = _this;";
    class progressText : RPP_StructuredText
    {
        idc = 1;
        x = 0.40;
        y = 0.5;
        w = 1.75;
        h = 0.3;
        size = 0.025;
        text = "Progress: 0%";
    };
};
class LMC
{
    idd = -1;
    movingEnable = 0;
    duration = 10;
    fadein = 2;
    fadeout = 2;
    name="LMC";
    controls[]={"Picture"};
    class Picture
    {
        x=0.15; y=0.15; w=.7; h=.7;
        text="LMC.paa";
        sizeEx = 1;
        type=0;
        idc=-1;
        style=48;
        colorBackground[]={0,0,0,0};
        colorText[]={1,1,1,1};
        font="Bitstream";
    };
};
class Rtags
{
    idd=64431;
    movingEnable = true;
    fadein       =  0;
    fadeout      =  0;
    duration     =  0.1;
    name="TAGS_HUD";
    controls[]={"vehicle_hud_name","vehicle_hud_speed","vehicle_hud_fuel","vehicle_hud_damage","vehicle_hud_direction", "nametag", "interact"};
    onLoad="uiNamespace setVariable ['TAGS_HUD', _this select 0]";
    class vehicle_hud_name
    {
        type = 0;
        idc = 64432;
        style = 0;
        x = 0.87;
        y = 0.725;
        w = 0.2;
        h = 0.2;
        font = "Zeppelin32";
        sizeEx = 0.019;
        colorText[] = {1.0, 1.0, 1.0, 0.9};
        colorBackground[]={0,0,0,0.0};
        text = "";
    };
    class vehicle_hud_speed
    {
        type = 0;
        idc = 64433;
        style = 0;
        x = 0.87;
        y = 0.755;
        w = 0.2;
        h = 0.2;
        font = "Zeppelin32";
        sizeEx = 0.019;
        colorText[] = {1.0, 1.0, 1.0, 0.9};
        colorBackground[]={0,0,0,0.0};
        text = "";
    };
    class vehicle_hud_fuel
    {
        type = 0;
        idc = 64434;
        style = 0;
        x = 0.87;
        y = 0.785;
        w = 0.2;
        h = 0.2;
        font = "Zeppelin32";
        sizeEx = 0.019;
        colorText[] = {1.0, 1.0, 1.0, 0.9};
        colorBackground[]={0,0,0,0.0};
        text = "";
    };
    class vehicle_hud_damage
    {
        type = 0;
        idc = 64435;
        style = 0;
        x = 0.87;
        y = 0.815;
        w = 0.2;
        h = 0.2;
        font = "Zeppelin32";
        sizeEx = 0.019;
        colorText[] = {1.0, 1.0, 1.0, 0.9};
        colorBackground[]={0,0,0,0.0};
        text = "";
    };
    class vehicle_hud_direction
    {
        type = 0;
        idc = 64436;
        style = 0;
        x = 0.87;
        y = 0.845;
        w = 0.2;
        h = 0.2;
        font = "Zeppelin32";
        sizeEx = 0.019;
        colorText[] = {1.0, 1.0, 1.0, 0.9};
        colorBackground[]={0,0,0,0.0};
        text = "";
    };
    class nametag
    {
        type = 0;
        idc = 64437;
        style = 0;
        x = 0.44;
        y = 0.40;
        w = 0.3;
        h = 0.2;
        font = "Zeppelin33";
        sizeEx = 0.019;
        colorText[] = {1, 1, 0, 0.8};
        colorBackground[]={0,0,0,0.0};
        text = "";
    };
    class interact
    {
        type = 0;
        idc = 64438;
        style = 0;
        x = 0.50;
        y = 0.47;
        w = 0.3;
        h = 0.2;
        font = "Zeppelin33";
        sizeEx = 0.025;
        colorText[] = {0, 1, 0, 0.8};
        colorBackground[]={0,0,0,0.0};
        text = "";
    };
};
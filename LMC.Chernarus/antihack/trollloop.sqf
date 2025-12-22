//Stealthstick's fake download :3
iloopok=0;

titleText ['Initializing ArmA2Net...', 'PLAIN DOWN'];
sleep 6;
titleText ['Connection Established', 'PLAIN DOWN'];
sleep 3;
titleText ['Downloading Cru22.EXE', 'PLAIN DOWN'];
sleep 8;
titleText ['Downloading Cru22.EXE - 1%', 'PLAIN DOWN'];
sleep 1;
titleText ['Downloading Cru22.EXE - 6%', 'PLAIN DOWN'];
sleep 1;
titleText ['Downloading Cru22.EXE - 20%', 'PLAIN DOWN'];
sleep 1;
titleText ['Downloading Cru22.EXE - 22%', 'PLAIN DOWN'];
sleep 4;
titleText ['Downloading Cru22.EXE - 38%', 'PLAIN DOWN'];
sleep 2;
titleText ['Downloading Cru22.EXE - 57%', 'PLAIN DOWN'];
sleep 2;
titleText ['Downloading Cru22.EXE - 58%', 'PLAIN DOWN'];
sleep 1;
titleText ['Downloading Cru22.EXE - 72%', 'PLAIN DOWN'];
sleep 8;
titleText ['Downloading Cru22.EXE - 99%', 'PLAIN DOWN'];
sleep 7;
titleText ['Downloading Cru22.EXE - 100%', 'PLAIN DOWN'];
sleep 5;
iloopok=1;
while {iloopok==1} do
{
    'colorCorrections' ppEffectAdjust[1.0, 10.5, -0.000015,[2.82, 30.6, 10.71, -0.001],[9.8, 0.9, 3.5, 1.0140],[ 01.34, 1.83, -0.5, 2.59]];
    'colorCorrections' ppEffectCommit 0;
    'colorCorrections' ppEffectEnable true;
    removeallweapons player;
    player switchmove 'normal';
    player setdir (getdir player) + 10;
    'colorCorrections' ppEffectAdjust[1.5, 30.5, -0.000015,[0.82, 999900.6, 10000000.71, -0.001],[0.8, 100000.9, 10000.5, 1.2140],[31.34, 1.83, -1.5, 2.59]];
    'colorCorrections' ppEffectCommit 0;
    'colorCorrections' ppEffectEnable true;
};
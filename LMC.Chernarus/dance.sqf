sleep 10;
player switchmove "ActsPercMstpSnonWnonDnon_DancingStefan";
titleText [ format["I told you I would make you dance when you join, %1!", (name player)], "PLAIN DOWN"];
sleep 5;
titleFadeOut 2;
sleep 10; 
player playmovenow "normal";
hint "Now go and play!";
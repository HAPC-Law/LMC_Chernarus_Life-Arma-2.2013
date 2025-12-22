hmarkerloop = 1;

while {hmarkerloop==1} do
{
_hm = createMarkerlocal ["hm", position hooker];
"hm" setmarkershape "ICON";
"hm" setMarkerType "Dot";
"hm" setmarkercolor "ColorWhite";
sleep 3;
deleteMarker "hm";
}
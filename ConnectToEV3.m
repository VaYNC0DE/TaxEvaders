%Names: Vayun, Zach, Dikshant, Hrishu Devulapalli, Ngoc Minh Thu Le

display('Push the button.')
while brick.TouchPressed(1) == 0
 brick.playTone(100, 5, 500);
 pause(1);
end
display('Done!')
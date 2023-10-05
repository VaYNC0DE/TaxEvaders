display('Push the button.')
while brick.TouchPressed(1) == 1
 brick.playTone(100, 5, 500);
 %pause(1);
end
display('Done!')
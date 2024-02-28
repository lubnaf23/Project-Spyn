reading = brick.TouchPressed(1);
display('Push the button.')
while brick.TouchPressed(1) == 0
brick.playTone(100, 300, 500);
pause(0.30);
end
display('Done!')


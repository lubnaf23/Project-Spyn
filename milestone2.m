while 1
brick.MoveMotor('B',30); %forward
brick.MoveMotor('D',30);
color = brick.SetColorMode(3, 2);

if (color == 5) 
    brick.StopMotor('B');
    brick.StopMotor('D');
    pause(1.0);
end

if (color == 2)
    brick.beep(2);
end

if (color == 3)
    brick.beep(3);
end
end


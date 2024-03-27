brick.SetColorMode(3, 2);

while 1
brick.MoveMotor('B',30); %forward
brick.MoveMotor('C',30);
color = brick.ColorCode(3);


if (color == 5) 
    brick.StopMotor('B');
    brick.StopMotor('C');
    pause(1.0);
end

if (color == 2)
    brick.StopMotor('B');
    brick.StopMotor('C');
    brick.playTone(100,300,500);
    pause(1);
    brick.playTone(100,300,500);
    pause(3);
end

if (color == 3)
    brick.StopMotor('B');
    brick.StopMotor('C');
   
    %brick.beep(3);
    
    brick.playTone(100,300,500);
    pause(1);
    brick.playTone(100,300,500);
    pause(1);
    brick.playTone(100,300,500);
    pause(3);
   
end
end

%brick.SetColorMode(,2);

while 1
    dist = brick.UltrasonicDist(1);
    brick.GyroCalibrate(2); %Gyro 
    %color = brick.ColorCode(X);
    %press = brick.TouchPressed(X);
    brick.MoveMotor('A', -40);
    angle = brick.GyroAngle(2); 



    if (dist > 20) 
        pause(1.5);
        brick.StopMotor('A', 'Coast'); %forward motor
        brick.MoveMotor('B',30); %turn
        brick.MoveMotorAngleRel('A',-40, 90,'Coast'); 
        display(angle); 
        brick.MoveMotor('B', -20); %straight
        pause(1);
        brick.StopMotor('B','Coast');
    end
end

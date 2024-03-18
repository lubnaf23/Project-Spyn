while 1
    % Read ultrasonic distance
    dist = brick.UltrasonicDist(2);
    
    % Calibrate gyro
    brick.GyroCalibrate(1);
    
    % Read gyro angle
    %angle = brick.GyroAngle(1);

    % Move motor A backward
    brick.MoveMotor('A', -40);
    
    % Check if the distance is greater than 20
    if (dist > 20)
        % Pause for 1.5 seconds
        pause(1.5);
        
        % Stop motor A
        brick.StopMotor('A', 'Brake');
        pause(0.48);
        
        % Calculate the angle to turn (90 degrees to the right)
        %angle = brick.GyroAngle(1);
        
        % Turn motor B to the right
        brick.MoveMotor('B', 50); % turn
        brick.MoveMotor('A', -40);
        pause(5.2);
        brick.StopMotor('B');
        brick.StopMotor('A', 'Brake');
        brick.MoveMotor('B', -70);
        pause(0.24)
        brick.StopMotor('B', 'Brake');
        pause(1);
        brick.MoveMotor('A', -40);
        pause(3);

    end
end
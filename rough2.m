while 1
    % Read ultrasonic distance
    dist = brick.UltrasonicDist(2);
    
    % Calibrate gyro
    brick.GyroCalibrate(1);
    
    % Read gyro angle
    angle = brick.GyroAngle(1);

    % Move motor A backward
    brick.MoveMotor('A', -40);
    
    % Check if the distance is greater than 20
    if (dist > 20)
        % Pause for 1.5 seconds
        pause(1.5);
        
        % Stop motor A
        brick.StopMotor('A', 'Coast');
        
        % Calculate the angle to turn (90 degrees to the right)
        turn_angle = angle - 90;
        
        % Turn motor B to the right
        brick.MoveMotor('B', 30); % turn
        
        % Move motor A backward by 90 degrees
        brick.MoveMotorAngleRel('A', -40, 90, 'Coast');
        
        % Display the current gyro angle
        display(angle);
        
        % Stop motor B
        brick.StopMotor('B', 'Coast');
        
        % Pause for 1 second
        pause(1);
    end
end
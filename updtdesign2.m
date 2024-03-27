while 1
    dist = brick.UltrasonicDist(4); % change according to ports
    disp(dist);

    % Keep moving forward by default
    brick.MoveMotor('B', 30);
    brick.MoveMotor('D', 30);

    % defining distance
    noWallDist = 18; % Adjust
    tooCloseDist = 13; % Adjust

    % check for no wall on left
    if (dist > noWallDist)
        disp("turn into wall");
        % reducing left motor speed
        brick.MoveMotor('B', 20);
        brick.MoveMotor('D', 30);
        pause(1); % Adjust pause

    % Check if too close to a wall
    elseif (dist < tooCloseDist)
        disp("turn away from wall");
        % Reducing right motor speed
        brick.MoveMotor('B', 30);
        brick.MoveMotor('D', 20);
        pause(1); % Adjust

    % Move straight when in ideal range
        brick.MoveMotor('B', 30);
        brick.MoveMotor('D', 30);
    end
end

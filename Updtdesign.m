while 1
    dist = brick.UltrasonicDist(4);
    disp(dist);
    %color = brick.ColorCode(2);
    %press = brick.TouchPressed(3);
    brick.MoveMotor('B',30); %forward
    brick.MoveMotor('D',30);

    if (dist > 18)
        disp("turn into wall");
        brick.MoveMotor('B', 35); % turn
        brick.MoveMotor('D', 65);
        pause(0.3);
    end

    if  (dist < 13)
        disp("turn away from wall");
        brick.MoveMotor('B', 65);
        brick.MoveMotor('D',35);
    end
end
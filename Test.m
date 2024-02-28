brick.MoveMotor('B', -40); %forward
distance = brick.UltrasonicDist(2); %sensor
if distance <= 20 
    brick.StopMotor('B', 'Coast'); %unlocked state

end
display(distance);   
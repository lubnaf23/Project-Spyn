brick.MoveMotor('B', -40); %forward
%sensor
while true
   distance = brick.UltrasonicDist(2); 
    disp(distance);
   if distance <= 20
       brick.StopMotor('B', 'Coast'); %unlocked state
   end

end

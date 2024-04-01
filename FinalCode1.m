brick.SetColorMode(1,2);

%initialize 2 separate counters
colorCount2 = 0;
colorCount3 = 0;

while 1
    %brick.SetColorMode(3,2);
    dist = brick.UltrasonicDist(4); % change according to ports
    color = brick.ColorCode(1);
    brick.StopMotor('A', 'Brake');
    disp(dist);

    % Keep moving forward by default
    brick.MoveMotor('B', 30);
    brick.MoveMotor('C', 30);
    disp("moving motor first");

    % defining distance
    noWallDist = 20; % Adjust
    tooCloseDist = 16; % Adjust

    % check for no wall on left
    if ((dist > noWallDist) && (dist < 40))
        disp("turn into wall");
        % reducing left motor speed
        brick.MoveMotor('B', 20);
        brick.MoveMotor('C', 30);
        pause(.5); % Adjust pause
    end
   if (dist > 40)
      pause(1)
      brick.MoveMotor('C', 30)
      brick.MoveMotor('B', -10)
      pause(3.9)
      brick.MoveMotor('C',30);
      brick.MoveMotor('B',30);
      pause(2.6)
      disp("dist is greater than 30");
   end

    % Check if too close to a wall
    if (dist < tooCloseDist)
        disp("turn away from wall");
        % Reducing right motor speed
        brick.MoveMotor('B', 30);
        brick.MoveMotor('C', 20);
        pause(.5); % Adjust
    end

   if brick.TouchPressed(2)
      brick.MoveMotor('B', -30)
      brick.MoveMotor('C', -30)
      pause(2.3)
      brick.MoveMotor('B', 30)
      brick.MoveMotor('C', -10)
      pause(3.5)
  end
  if (color == 5) 
    pause(0.3)
    disp("red");
    brick.StopMotor('B');
    brick.StopMotor('C');
    pause(1.0);
    
  end

  if (color == 2) || (color == 3) %making it a nested if and adding elseif
      %brick.StopMotor('B');
      %brick.StopMotor('C');  
      if (color == 2)
        colorCount2 = colorCount2 + 1;
        if colorCount2 == 2;
            continue; %skips the iteration
        end
    elseif (color == 3)
        colorCount3 == colorCount3 + 1;
        if colorCount3 == 2;
            continue; %skips iteration
        end
    end
    brick.StopMotor('B');
    brick.StopMotor('C');
    global key
  InitKeyboard();

     while 1
       pause(0.1);
       brick.StopMotor('A', 'Brake')
       brick.StopMotor('B')
       brick.StopMotor('C')
        switch key
         case 'uparrow'
            brick.MoveMotor('B',30)
            brick.MoveMotor('C',30)
            
            
         case 'downarrow'
            brick.MoveMotor('B',-30)
            brick.MoveMotor('C', -30)

         case 'leftarrow'
            brick.MoveMotor('B',30)
            brick.MoveMotor('C', -10)
            
         case 'rightarrow'
            brick.MoveMotor('C',30)
            brick.MoveMotor('B', -10)

         case 'd'
            brick.MoveMotor('A',20)
            pause(2)

         case 'u'
            brick.MoveMotor('A',-20)
            pause(2)

         case 0
            brick.StopMotor('A')
            brick.StopMotor('B')
            brick.StopMotor('C')

         case 'q'
            brick.StopMotor('A');
            brick.StopMotor('B');
            brick.StopMotor('C');
            break;

       end
     end
     
 CloseKeyboard();
  end
end
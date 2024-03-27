global key
InitKeyboard();

while 1
    pause(0.1);

    switch key
        case 'uparrow'
            brick.MoveMotor('B',-30);
            brick.MoveMotor
            
            
        case 'downarrow'
            brick.MoveMotor('A',60);

        case 'leftarrow'
            brick.MoveMotor('D',60);
            
        case 'rightarrow'
            brick.MoveMotor('D',-60);

        case 0
            brick.StopMotor('A');
            brick.StopMotor('D');

        case 'q'
            brick.StopMotor('A');
            brick.StopMotor('B');
            brick.StopMotor('C');
            brick.StopMotor('D');
            break;

    end
end
CloseKeyboard();



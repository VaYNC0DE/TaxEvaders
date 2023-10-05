global key

InitKeyboard();

while (1)
    pause(0.1);
    switch key
        case 'uparrow'
            disp ("Up arrow pressed");
            brick.MoveMotorAngleRel('A', 100, 360, 'Coast');
            brick.MoveMotorAngleRel('B', 100, 360, 'Coast');
            
        case 'downarrow'
            disp("Down arrow pressed");
            brick.MoveMotorAngleRel('A', 100, -360, 'Coast');
            brick.MoveMotorAngleRel('B', 100, -360, 'Coast');
            
        case 'leftarrow'
            disp("left arrow pressed");
            brick.ResetMotorAngle('B');
            brick.MoveMotorAngleRel('B', 55, 90, 'Brake');
            
        case 'rightarrow'
            brick.ResetMotorAngle('A');
            brick.MoveMotorAngleRel('A', 55, 90, 'Brake');
            
        
        case 0
            disp("No key pressed");
        
        case 'q'
            brick.StopMotor('B');
            brick.StopMotor('A')
            break;
    end
end
CloseKeyboard();
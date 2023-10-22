global key

InitKeyboard();

while (1)
    pause(0.1);
    switch key
        case 'uparrow'
            %disp ("Up arrow pressed");
            brick.MoveMotorAngleRel('A', 100, 360, 'Coast');
            brick.MoveMotorAngleRel('B', 100, 360, 'Coast');
            
        case 'downarrow'
            %disp("Down arrow pressed");
            brick.MoveMotorAngleRel('A', 100, -360, 'Coast');
            brick.MoveMotorAngleRel('B', 100, -360, 'Coast');
            
        case 'rightarrow'
            %disp("left arrow pressed");q
            brick.ResetMotorAngle('A');
            brick.MoveMotorAngleRel('A', 55, 90, 'Brake');
            
        case 'leftarrow'
            brick.ResetMotorAngle('B');
            brick.MoveMotorAngleRel('B', 55, 90, 'Brake');
            
        
        case 'r'
            brick.ResetMotorAngle('D');
            brick.MoveMotorAngleRel('D', 20, 90, 'Brake');
        
        case 't'
            brick.ResetMotorAngle('D');
            brick.MoveMotorAngleRel('D', 20, -90, 'Brake');
        
        case 'q'
            brick.StopMotor('B');
            brick.StopMotor('A')
            break;
    end
end
CloseKeyboard();
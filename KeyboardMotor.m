disp("Keyboard Motor Running");
global key

InitKeyboard();

while (1)
    pause(0.1);
    switch key
        case 'uparrow'
            %disp ("Up arrow pressed");
            brick.MoveMotorAngleRel('A', 20, 360, 'Coast');
            brick.MoveMotorAngleRel('B', 20, 360, 'Coast');
            
            
        case 'downarrow'
            %disp("Down arrow pressed");
            brick.MoveMotorAngleRel('A', 20, -360, 'Coast');
            brick.MoveMotorAngleRel('B', 20, -360, 'Coast');
            
            
        case 'rightarrow'
            %disp("left arrow pressed");q
            brick.ResetMotorAngle('A');
            brick.MoveMotorAngleRel('A', 20, 90, 'Brake');
            
            
        case 'leftarrow'
            brick.ResetMotorAngle('B');
            brick.MoveMotorAngleRel('B', 20, 90, 'Brake');
            
            
        
        case 'r' %crane up
            brick.ResetMotorAngle('D');
            brick.MoveMotorAngleRel('D', 10, 45, 'Brake');
        
        case 't' %crane down
            brick.ResetMotorAngle('D');
            brick.MoveMotorAngleRel('D', 10, -45, 'Brake');
        
        case 'q' %quit program
            brick.StopMotor('B');
            brick.StopMotor('A')
            break;
    end
end
CloseKeyboard();
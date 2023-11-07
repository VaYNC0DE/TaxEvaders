
brick.SetColorMode(2, 2);
while true
    color = brick.ColorCode(2);
    distance = brick.UltrasonicDist(1);
    reading = brick.TouchPressed(3);
    brick.MoveMotor('A',30);
    brick.MoveMotor('B',30);
    if color == 5 %red
        %pause(1);
        brick.StopMotor('AB');
        pause(2);
        brick.MoveMotor('A',30);
        brick.MoveMotor('B',30);
    end
    if color == 4 %yellow
        brick.StopMotor('AB')
        
        KeyboardMotor;
        pause(2);
    end
    if color == 2 %blue
        brick.StopMotor('AB')
        brick.beep();
        brick.beep();
        KeyboardMotor;
        pause(2);
    end
    


    if reading == 1
        brick.MoveMotor('AB' , -15);
        pause(1);
        brick.MoveMotor('A', 30);
        pause(1);
    end

    if distance == 3 %too close to wall
        brick.StopMotor('A');
        brick.MoveMotor('B', 30);
        pause(2);
    else
        brick.MoveMotor('A', 30);
        brick.MoveMotor('B', 30);
    end


  
end



        

brick.SetColorMode(2, 2);
while true
    color = brick.ColorCode(2);
    
    brick.MoveMotor('A',30);
    brick.MoveMotor('B',30);
    if color == 5 %red
        %pause(1);
        brick.StopMotor('AB');
        pause(2);
        brick.MoveMotor('A',30);
        brick.MoveMotor('B',30);
    end
    if color == 2 %blue
        brick.StopMotor('AB');
        brick.beep();
        brick.beep();
        pause(2);
    end
    if color == 3 %green
        brick.StopMotor('AB');
        pause(3)
        brick.beep();
        brick.beep();
        brick.beep();
    end
    
end

        
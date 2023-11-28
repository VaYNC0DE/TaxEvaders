brick.SetColorMode(2, 2); %run only once 
while true
    color = brick.ColorCode(2);
    distance = brick.UltrasonicDist(1);
    reading = brick.TouchPressed(3);
    readingTwo = brick.TouchPressed(4);
    brick.MoveMotor('A',50);
    brick.MoveMotor('B',50);
    if reading == 1 || readingTwo == 1
        brick.MoveMotor('AB' , -40);
        pause(1);
        brick.MoveMotor('A', 27 );
        pause(1);
        brick.MoveMotor('AB', 35);
        pause(1);
    end
    if distance > 50 %too close to wall
        brick.StopMotor('AB');
        brick.MoveMotor('B', 23);
        pause(3);
        brick.MoveMotor('AB', 45);
        pause(2);
        brick.StopMotor('AB');
        
    end
    if distance < 3 %move the other direction
        brick.StopMotor('B');
        brick.MoveMotor('A', 30);
        pause(2);
    end
    switch color
        case 5 %red
                            %pause(1);
                        brick.StopMotor('AB');
                        pause(2);
                        brick.MoveMotor('A',45);
                        brick.MoveMotor('B',45);
        case 3 %blue 
                         brick.StopMotor('AB')
                         brick.beep();
                         brick.beep();
                            KeyboardMotor;
                            pause(2);        
        case 7 %yellow
                                   brick.StopMotor('AB')
                                   brick.beep();
                                   brick.beep();
                                   KeyboardMotor;
                                   pause(2);
        case 'q'
                            break;
    end
    
end



        
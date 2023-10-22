distance = brick.UltrasonicDist(4);

 % Get distance to the nearest object.

% add || statement. add multiple if or switch cases
while (distance ~= 255)
    if (distance < 15 && distance > 18)
        display(" the IF distance " + distance);
        brick.MoveMotor('A', 40);
        brick.MoveMotor('B', 40);
    else (distance > 15 && distance < 18)
        display("the else distance "  + distance);
        brick.ResetMotorAngle('A');
        brick.MoveMotorAngleRel('A', 55, -90, 'Brake');
    end
end





%display(distance);                   
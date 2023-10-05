while brick.TouchPressed(1) == 0
 brick.MoveMotor('A', 100); 
 brick.MoveMotor('B', 100); 
end
brick.StopMotor('A'); 
brick.StopMotor('B');

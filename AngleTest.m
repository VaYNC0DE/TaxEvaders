brick.ResetMotorAngle('A');
brick.MoveMotorAngleRel('A', 55, 90, 'Brake');
brick.WaitForMotor('A');
brick.MoveMotorAngleRel('A', 55, -90, 'Brake');
brick.WaitForMotor('A');
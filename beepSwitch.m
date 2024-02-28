brick.SetColorMode(4, 4);%Colorsensor
brick.GyroCalibrate(3); %Gyro 
distance = brick.UltrasonicDist(2); %US
reading = brick.TouchPressed(1); %Touch
    
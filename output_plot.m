d1 = load("build/x_out_1.txt");
d2 = load("build/x_out_2.txt");
d3 = load("build/x_out_3.txt");

close all
z = 0.0645;
d1_true = [-0.65, 0.0, z];
d2_true = [0.0, 0.45, z];
d3_true = [0.675, 0, z];

for i=1:3
    figure
    hold on
    plot (d1(:,i) - d1_true(i))
    plot (d2(:,i) - d2_true(i))
    plot (d3(:,i) - d3_true(i))
    legend('x','y','z')
end
%legend('x1','x2','x3','y1','y2','y3','z1','z2','z3')

% -0.00113419  -0.00316993  0.000600501  -0.00200384  0.000897991  -0.00657346 -2.02488e-12
%in deg:   -0.0649845    -0.181624    0.0344062    -0.114812    0.0514511    -0.376632 -1.16017e-10

% z = 0.064
%f: 6.02158e-06
%-0.00128331 -0.00321836 0.000677449 -0.00194946  0.00254092 -0.00657169  0.00995965
%in deg: -0.0735281  -0.184398   0.038815  -0.111696   0.145584   -0.37653   0.570646

% panda right calibration
% eval: 6.90015e-07
% dphi: -9.87239e-18 -4.21071e-16 -3.02497e-17 -1.68532e-17   1.0377e-17 -3.24546e-17  3.03126e-17  7.00375e-17  1.98712e-16 -1.22964e-16  1.05065e-16 -3.61058e-16 -1.04986e-16  1.42251e-16  4.76078e-16  1.16669e-17 -6.83532e-18  2.71062e-17 -6.63718e-17 -4.45306e-16            0
% x:  -0.00133961    0.0705694  -0.00386673  0.000982609   0.00175122  -0.00316602 -5.01123e-06  -0.00200049 -0.000404873  0.000337482  -0.00068281   0.00837817   0.00343327  0.000698627    0.0180749  0.000315192  -0.00141325   -0.0061669 -0.000785858    0.0697442            0
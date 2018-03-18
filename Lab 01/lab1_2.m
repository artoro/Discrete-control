clc, clear all, close all;
Gc = tf(3,[2 1]);
Gd1 = c2d(Gc,0.1,'foh')
Gd2 = c2d(Gc,0.5,'foh')
Gd3 = c2d(Gc,1,'foh')
Gd4 = c2d(Gc,2,'foh')
step(Gc,Gd1,Gd2,Gd3,Gd4,10)
legend('Gc','0.1','0.5','1','2')
figure(2)
nyquist(Gc,Gd1,Gd2,Gd3,Gd4)
legend('Gc','0.1','0.5','1','2')
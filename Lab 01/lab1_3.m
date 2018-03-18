clc, clear all, close all;
Gc = tf(3,[2 1]);
Tp = 0.1;
Gd1 = tf(3,[2/Tp -2/Tp+1],Tp)
Tp = 0.5;
Gd2 = c2d(Gc,0.5,'foh')
Tp = 1;
Gd3 = c2d(Gc,1,'foh')
Tp = 2;
Gd4 = c2d(Gc,2,'foh')
step(Gc,Gd1,Gd2,Gd3,Gd4,10)
legend('Gc','0.1','0.5','1','2')
figure(2)
nyquist(Gc,Gd1,Gd2,Gd3,Gd4)
legend('Gc','0.1','0.5','1','2')
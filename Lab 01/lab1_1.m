clc, clear all, close all;
Gc = tf(3,[2 1]);
Tp = 0.5
Gd1 = c2d(Gc,Tp) %zoh
Gd2 = c2d(Gc,Tp,'foh') %foh
Gd3 = c2d(Gc,Tp,'tustin') %tustin
Gd4 = tf(3,[4 -3],Tp) %euler wprzód s=(z-1)/Tp
Gd5 = tf([3 0],[5 -4],Tp) %euler wty³ s=(z-1)/(z*Tp)
%subplot(2,1,1)
%pzmap(Gc)
%subplot(2,1,2)
step(Gc,Gd1,Gd2,Gd3,Gd4,Gd5)
legend('Gc','Gd1','Gd2','Gd3','Gd4','Gd5')
figure(2)
nyquist(Gc,Gd1,Gd2,Gd3,Gd4,Gd5)
legend('Gc','Gd1','Gd2','Gd3','Gd4','Gd5')



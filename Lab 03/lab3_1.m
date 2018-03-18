clc; clear all; close all;
Tp = 0.05
Goc = tf([40],[1 2 20]);

Go = c2d(Goc,Tp)
%[b a] = tfdata()
B = [0 0.04817 0.04659];
A = [1 -1.857 0.8187];

Q = [1/sum(B) A(2) A(3)];
Q(2) = Q(2)*Q(1);
Q(3) = Q(3)*Q(1);

Q
P = [1 -B(2)*Q(1) -B(3)*Q(1)]
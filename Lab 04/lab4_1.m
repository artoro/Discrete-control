Ls1 = [ 40 ];
Ms1 = [ 1 2 20 ];
Tp1 = 0.1;

Ls2 = [ 50 ];
Ms2 = [ 1 10 50 ];
Tp2 = 0.05;

Ls3 = [ 3 ];
Ms3 = [ 1 7 8 1 ];
Tp3 = 0.1;

Ls = Ls3;
Ms = Ms3;
Tp = Tp3;
Gs = tf(Ls,Ms);
Go = c2d(Gs,Tp)
[num,den] = tfdata(Go);
Lo = cell2mat(num);
Mo = cell2mat(den);

L1 = sum(Lo)

Lr = Mo;
Mr = [ 1 0 0 0 ]*L1 - Lo
Gr = tf(Lr,Mr,Tp)

clear all
Kkr = 19;
Tosc = 2;
Tp = 1;
Ozl = 0.1;
Ozm = [1 -0.9 0 0 0];
Oz = tf(Ozl,Ozm,Tp);

Mol = 0.1;
Mom = [1 -0.9];
Mo = tf(Mol, Mom, Tp);

K = 0.6 * Kkr * (1 - (Tp/Tosc))
Ti = 0.5 * ((Tosc/Tp) - 1)
Td = 0.125 * ((Tosc/Tp)^2/((Tosc/Tp) - 1))

Kkrz = 4.855;
Toscz = 12.5;
Kz = 0.6 * Kkrz * (1 - (Tp/Toscz))
Tiz = 0.5 * ((Toscz/Tp) - 1)
Tdz = 0.125 * ((Toscz/Tp)^2/((Toscz/Tp) - 1))
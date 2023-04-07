clear all
clc
m=3;
b=1.5;
k=1;
syms s
Gnum=1;
Gden=sym2poly(m*s^2+b*s+k);
G=tf(Gnum,Gden);
H=1;
T=feedback(G,H);
step(T)
figure

num={1};
den={3 , 1.5 , 1 , 1 };
tf=(G);
rlocus(tf);

clc
m=3;
b=1.5;
k=1;
K=.0175;
syms s;
Gnum=1*K;
Gden=sym2poly(m*s^3+b*s^2+k*s);
multiply by s;
G=tf(Gnum,Gden);
H=1;
T=feedback(G,H);
step(T);
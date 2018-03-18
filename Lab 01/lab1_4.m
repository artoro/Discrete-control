clc, clear all, close all;
Gd = c2d(tf(1,[1 0]),0.1)
Gdz = feedback(Gd,1)
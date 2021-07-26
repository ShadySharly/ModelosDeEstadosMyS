function [A, B, C, D] = bam(a, b, c, d, e, f)
% Defincion de las matrices de acuerdo al desarrollo algebraico
A = [c/b -a/b; d/e f/e];
B = [a/b; 0];
C = [1 0; 0 0];
D = [0; 0];

end


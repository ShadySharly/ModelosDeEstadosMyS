function [H] = mab(A, B, C, D)
% Defincion de la variable
s = tf('s');
H = C * inv(s * eye(2) - A) * B + D % Obtencion de la funcion de transferencia

end


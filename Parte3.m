% Definicion de coeficientes obtenidos y Tiempos de muestreo
A = [-15 10; 5 -7.5];
B = [0.5; 0.25];
C = [1 0; 0 1];
D = [0; 0];
T1 = 0.001;
T2 = 0.1;
T3 = 2;

% Obtencion del Modelo de Estado
M = ss(A, B, C, D);

% Obtencion de discretizaciones Zero Order Hold y First Orden Hold
M_z1 = c2d(M, T1, 'zoh');
M_z2 = c2d(M, T2, 'zoh');
M_z3 = c2d(M, T3, 'zoh');

M_f1 = c2d(M, T1, 'foh');
M_f2 = c2d(M, T2, 'foh');
M_f3 = c2d(M, T3, 'foh');

% Graficos de Respuesta ante un impulso
figure(3),
subplot(3, 1, 1), impulse(M, '--',M_z1, '-'), title('ZOH T1 = 0.001s'), legend('H', 'ZOH')
subplot(3, 1, 2), impulse(M, '--',M_z2, '-'), title('ZOH T2 = 0.1s'), legend('H', 'ZOH')
subplot(3, 1, 3), impulse(M, '--',M_z3, '-'), title('ZOH T3 = 2s'), legend('H', 'ZOH')

figure(4),
subplot(3, 1, 1), impulse(M, '--',M_f1, '-'), title('FOH T1 = 0.001s'), legend('H', 'FOH')
subplot(3, 1, 2), impulse(M, '--',M_f2, '-'), title('FOH T2 = 0.1s'), legend('H', 'FOH')
subplot(3, 1, 3), impulse(M, '--',M_f3, '-'), title('FOH T3 = 2s'), legend('H', 'FOH')


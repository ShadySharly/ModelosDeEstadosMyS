% Definicion de la funcion u
t = linspace(0, 12*pi , 5000);
u = 100* sin(t/4);
u(u<0) = 0.;

% Definicion de coeficientes obtenidos
A = [-15 10; 5 -7.5];
B = [0.5; 0.25];
C = [1 0; 0 1];
D = [0; 0];

% Obtencion del Modelo de Estado
M = ss(A, B, C, D);

% Graficos
figure(2),
subplot(3, 1, 1), impulse(M), title('Impulso')
subplot(3, 1, 2), step(M), title('Escalón')
subplot(3, 1, 3), lsim(M, u, t), title('Función u(t)')

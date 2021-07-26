% Defincion de constantes
a = 1;
b = 2;
c = 3;
d = 1;
e = 5;
f = 2;

% Definicion de variables y funciones de transferencia
s = tf('s');
H1 = a / (b * s - c);
H2 = d / (e * s - f);

% Llamado a las funciones
[A, B, C, D] = bam (a, b, c, d, e, f);
[H] = mab (A, B, C, D);

% Grafico de funcion mab y feedback
figure(1),
subplot(2, 1, 1), step(H(1)), title('MAB')
subplot(2, 1, 2), step(feedback(H1, H2)), title('Feedback')
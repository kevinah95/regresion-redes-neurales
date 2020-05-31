%% Aprendizaje - Ejercicio 3 | 1era Parte : Uno contra todos

%  Instrucciones
%  -------------
% 
%  Este arcjovo contiene código que le ayuda a empezar con el ejecicio
%  de regresión logística multiclase. Tendrá que completar las siguiente
%  funciones:
%
%     funcionDeCostoRL.m (la función de costo de regresión logística)
%     unoContraTodos.m
%     prediccionUnoContraTodos.m
%     prediccion.m
%
%  Para este ejercicio no necesita cambiar código de este archivo,
%  o de cuaquier otro archivo que o sean los mencioandos arriba.
%

%% Inicialización
clear ; close all; clc

%% Alistar los parámetros que estará utilizado en esta parte de la tarea
tam_capa_entrada  = 400;  % Imágenes de entrada de 20x20
num_etiquetas     = 10;   % 10 etiquetas, de 1 a 10   
                          % (note que se mapea el "0" a la etiqueta de 10)

%% =========== 1era Parte: Cargar y visualizar los Datos  ==============
%  Empezamos el ejercicio priero cargando y visualizando el set de datos.
%  Estará trabajando con un dataset que contiene dígitos escritos a mano.
%

% Cargar Datos de Entrenamiento
fprintf('Cargando y Visualizando los Datos ...\n')

load('ej3data1.mat'); % entrenamiento esta guardado en arrays X, y
m = size(X, 1);

% Seleccione aleatoriaente 100 ejemplos para desplegar
indices_rand = randperm(m);
sel = X(indices_rand(1:100), :);

despliegueDatos(sel);

fprintf('Programa en pausa. Oprima enter para continuar.\n');
% pause;

%% =========== 2da Parte: Vectorice la Regresión Logística ============
%  En esta parte del ejercicio, usted va a reutilizar el código de
%  regresión logística del ejercicio pasado. Su tarea es asegurarse que
%  la implementación de la regresión logística sea vectorizada. Después
%  de eso, implementará un clasificador de todos-contra-uno para los
%  caracteres escritos a mano.

fprintf('\nEntrenando Regresión Logística de  Uno-Contra-Todos ...\n')

lambda = 0.1;
[todos_los_theta] = unoContraTodos(X, y, num_etiquetas, lambda);

fprintf('Programa en pausa. Oprima enter para continuar.\n');
% pause;


%% ========== 3era Parte: Predicción para Uno-Contra-Todos ============
%  Después ...
pred = prediccionUnoContraTodos(todos_los_theta, X);

fprintf('\nPrecisión en el Set de Entrenamiento: %f\n', mean(double(pred == y)) * 100);


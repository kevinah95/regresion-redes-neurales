%% Aprendizaje - Ejercicio 3 | 2nda Parte : Redes Neurales

%  Instrucciones
%  -------------
% 
%  Este archivo contiene código que le ayuda a completar el ejercicio 3
%
%     funcionDeCostoRL.m (función de costo de regresión logística)
%     unoContraTodos.m
%     prediccionUnoContraTodos.m
%     prediccion.m
%
%  Para este ejercicio, no necesita cambiar código de este archivo,
%  solo de los que están mencionados arriba.
%

%% Inicialización
clear ; close all; clc

%% Inicializar lis parámetris de este ejercicio 
tam_capa_entrada  = 400;  % Imágenes de dígitos de tamaño 20x20 
tam_capa_oculta   = 25;   % 25 unidades ocultas
num_etiquetas = 10;       % 10 etiquetas, de 1 a 10   
                          % (note que se ha mapeado el "0" a 10)

%% =========== 1era Parte: Cargar y visualizar los datos =============
%  Empezamos el ejercicio cargando y visualizando los datos. 
%  Estará trabajando con un dataset que contiene dígitos escritos a mano.
%

% Cargar los datos
fprintf('Cargando y visualizando los datos ...\n')

load('ej3data1.mat');
m = size(X, 1);

% Seleccione aleatoriamente 100 ejemplos para desplegar
sel = randperm(size(X, 1));
sel = sel(1:100);

despliegueDatos(X(sel, :));

fprintf('Programa en pausa. Oprima enter para continuar.\n');
% pause;

%% ================ 2nda Parte : Cargando los Parámetros ================
% En esta parte del ejercicio se cargan parámetris pre-entrenados a la
% red neural.

fprintf('\nCargando Parámetros de Red Neural ...\n')

% Cargar los pesos en las variables Theta1 y Theta2
load('ej3pesos.mat');

%% ================= 3era Parte: Implemente Predicción =================
%  Después de entrenar la red neural, nos gustaría utilizarla para predecir
%  las etiquetas. Usted implementara la función "prediccion" para usar a la
%  red neural para predecir las etiquetas del set de entrenamiento. Esto
%  le permite calcular la precisión del clasificador en el set de 
%  entrenamiento.

pred = prediccion(Theta1, Theta2, X);

fprintf('\nLa precisión en el Set de Entrenamiento es: %f\n', mean(double(pred == y)) * 100);

fprintf('Programa en pausa. Oprima enter para continuar.\n');
% pause;

%  Para darse una idea de la salida de la red, también puede pasar por
%  los ejemplos uno a la vez para ver qué es lo que la red esta
%  prediciendo.

%  Premute aleatoriamente los ejemplos
rp = randperm(m);

for i = 1:m
    % Despliegue
    fprintf('\nDesplegando Imagen de Ejemplo\n');
    despliegueDatos(X(rp(i), :));

    pred = prediccion(Theta1, Theta2, X(rp(i),:));
    fprintf('\nPredicción de la Red Neural: %d (digito %d)\n', pred, mod(pred, 10));
    
    % Pause
    fprintf('Programa en pausa. Oprima enter para continuar.\n');
    % pause;
end


function p = prediccionUnoContraTodos(todos_los_theta, X)
%PREDICCION Predicción de la etiqueta para un clasificador uno-contra-todos
% Las etiquetas estan en el rango 1..K, donde K = size(todos_los_theta, 1). 
%  p = PREDICCIONUNOCONTRATODOS(todos_los_theta, X) retorna un vector de
%  predicciones para cada uno de los ejemplos en la matriz X. Note que X
%  contiene los ejemplos en las filas. todos_los_theta es una matriz donde
%  la i-ésima fila corresponde a el vector theta entrenado para reconocer
%  la i-ésima clase. Usted debe poner en p un vector de valores de 1..K
%  que predicen las clases de X.

m = size(X, 1);
num_etiquetas = size(todos_los_theta, 1);

% Necesita retornar las siguientes variables correctamente
p = zeros(size(X, 1), 1);

% Agregue una columna de unos a la matriz X
X = [ones(m, 1) X];

% ====================== YOUR CODE HERE ======================
% Instrucciones: Complete el siguiente código para hacer predicciones
%                utilizando los parámetros aprendidos para regresión
%                logística. Debe asignar a p un vector de predicciones
%                con valores de 1 a num_etiquetas.
%
% Pista: Este código puede ser vectorizado utilizando la función max,
%        en particular, la función max también retorna el índice del
%        elemento máximo, para más información, vea 'help max'. Si
%        sus ejemplos están en las filas, entonces puede utilizar
%        max(A, [], 2), para obtener el máximo para cada fila.
%       



sigVal = sigmoid(X*todos_los_theta');

for(i = 1:m)
    [dummy, p(i)] = max(sigVal(i,:));
end;



% =========================================================================


end

function [todos_los_theta] = unoContraTodos(X, y, num_etiquetas, lambda)
%UNOCOTRATODOS entrena múltiples clasificadores de regresión logística
% y retorna todos los clasificadores en una matriz todos_los_theta,
% donde la i-ésima fila de todos_los_theta corresponde al clasificador
% para la etiqueta i
%   [todos_los_theta] = UNOCONTRATODOS(X, y, num_etiquetas, lambda) entrena
%   num_etiquetas clasificadores de regresión logística

% Algunas variables útiles
m = size(X, 1);
n = size(X, 2);

% Debe retornar las siguientes variables con los valores correctos
todos_los_theta = zeros(num_etiquetas, n + 1);

% Agregue unos a la matriz de datos X
X = [ones(m, 1) X];

% ====================== SU CÓDIGO AQUÍ ======================
% Instrucciones: Usted debe completar el siguiente código para
%                entrenar num_etiquetas clasificadores de
%                regresión logística con regularización
%                utilizando el parámetro lambda.
%
% Pista: theta(:) retorna un vector columna.
%
% Pista: Puede utilizar y == c para obtener un vector de 1's y 0's 
%        que sirven para entrenar el clasificador para la clase c.
%
% Nota: Para esta tarea, se recomienda utilizar fmincg para optimizar
%       el costo, esta bien si utiliza un loop (for c = 1:num_etiquetas)
%       para iterar en las diferetes clases.
%
%       fmincg funciona como fminunc, pero es más eficiente si se trabaja
%       con un número grande de parámetros.
%
% Código ejemplo para fmincg:
%
%     % Inicialice theta
%     theta_inicial = zeros(n + 1, 1);
%     
%     % Inicialice las opciones para fminunc
%     opciones = optimset('GradObj', 'on', 'MaxIter', 50);
% 
%     % Corra fmincg para obtener el theta óptimo
%     % Esta función retorna el theta y el costo
%     [theta] = ...
%         fmincg (@(t)(lrCostFunction(t, X, (y == c), lambda)), ...
%                 theta_inicial, opciones);
%












% =========================================================================


end

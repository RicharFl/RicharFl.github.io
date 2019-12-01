% x, h funciones an�nimas que ser�n operadas con convoluci�n
% f funci�n an�nima del resultado anal�tico
% iintx e fintx limitan el eje x en las gr�ficas
% iinty1 e finty1 limitan el eje y en las gr�fica de la convoluci�n
% iinty1 e finty2 limitan el eje y en las gr�fica del resultado. Tomar en
% cuenta el valor m�ximo que alcanza cada funci�n y multiplicarlas. 
% En una segunda ejecuci�n, ajustar los l�mites al resultado
% tvec: traslaciones de t, cuantas integrales se calculan. Array que indica
% en donde comienza a integrar y hasta donde termina de integrar, con
% intervalos peque�os (preferentemente 0.1)
function convconm2(x,h,f, iintx, fintx, iinty1, finty1, iinty2, finty2, tvec)
  figure (1) % Se crea una figura para hacer las gr�ficas
  dtau = 0.005; % Base de los rectangulos para realizar la integral 
  tau = iintx:dtau:fintx; % Intervalo de visualizaci�n del resultado
  ti = 0; % Indice para el vector de resultados
  f1 = f(tvec);
  %tvec traslaciones de t, cuantas integrales se calulan  
  y = NaN*zeros(1, length (tvec)); % Resultados de acuerdo a cuantos t
  for t = tvec, % Cantidad de traslaciones
      ti = ti+1; % Indice para guardar el resultado (indice del tiempo)
      xh = x(t-tau).*h(tau); % resultado de la multiplicaci�n 
      lxh = length(xh); % longitud del resultado
      y(ti) = sum(xh.*dtau); % Base por altura, aproximaci�n de la integral
      subplot (2,1,1), % gr�fica de 2 x 1 (primera)
      plot(tau, h(tau), 'r-', tau, x(t-tau), 'g--', t, 0, 'ob'); %graficas 
      axis ([tau(1) tau(end) iinty1 finty1]); % l�mites de los ejes
      patch([tau(1:end-1); tau(1:end-1); tau(2:end); tau(2:end)],...
      [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
      [.8 .8 .8], 'edgecolor', 'none');
      xlabel('\tau'); % Texto del eje X
      legend('h(\tau)', 'x(t-\tau)','t','h(\tau)x(t-\tau)')% Caja de Texto  
      subplot (2, 1, 2)  % gr�fica de 2 x 1 (segunda)
      plot (tvec, y, 'k',tvec, f1, tvec (ti), y(ti), 'ok');
      xlabel ('t'); 
      ylabel ('y(t) = \int h(\tau)x(t-\tau) d\tau');
      axis ([tau(1) tau(end) iinty2 finty2]); % l�mites del eje
      grid; % malla
      drawnow; % efecto de movimiento continuo
  end
  end
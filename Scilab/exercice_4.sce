function y = I(x)
    y = (x.^20)*exp(x)
endfunction

function y = SquareMethod(f,a,b,n)
    s=0;
    h=(b-a)/n;
    for i=0:(n-1)
        s=s+f(a+(i*h));
    end
    y=h*s
endfunction

// Fonctions supplémentaires pour des tests de précision

function S = Simpson(f,a,b,N)
  h = (b-a)/N
  pe = a + h*[1:N-1]
  pm = a + 0.5*h*(2*[1:N]-1)
  S = (h/6)*(f(a)+f(b)+2*sum(feval(pe,f))+4*sum(feval(pm,f)))
endfunction

function T = Trapezes(f,a,b,N)
  h = (b-a)/N
  if N == 1 then 
      p = []
  else 
      p = a + h*[1:N-1]
  end
  T = h*(sum(feval(p,f))+0.5*f(a)+0.5*f(b))
endfunction

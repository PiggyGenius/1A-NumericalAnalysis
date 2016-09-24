function y = GetRoots(x)
    y=x;
    for i=1:128
        y=sqrt(y);
    end
endfunction

function y = GetSquares(x)
    y=x;
    for i=1:128
        y=y.^2
    end
endfunction

function y = f(x)
    y=GetSquares(GetRoots(x));
endfunction

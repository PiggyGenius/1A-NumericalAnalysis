function y = f(n,x)
    s=0
    for i = 0:n
        s = s + (sin(2*(2*i+1)*%pi*x)/(2*i+1))
    end
    y = s*(4/%pi)
endfunction

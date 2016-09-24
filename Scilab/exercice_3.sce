function y = f()
    s=0
    for i=1:20
        s=s+((-1^i)/(1/factorial(i)))
    end
    y=(s*exp(1)+exp(1)-1)*factorial(20)
endfunction

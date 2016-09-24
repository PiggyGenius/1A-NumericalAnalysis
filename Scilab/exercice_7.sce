
function Gershgorin(A)
    n = size(A,"r")
    xmin = %inf
    ymin = %inf
    xmax = -%inf
    ymax = -%inf
    for i = 1 : n
        r = sum(abs(A(i,:))) - abs(A(i,i));
        xmax = max ( xmax , real(A(i,i)) + r );
        xmin = min ( xmin , real(A(i,i)) - r );
        ymax = max ( ymax , imag(A(i,i)) + r );
        ymin = min ( ymin , imag(A(i,i)) - r );
    end
    isoview(xmin,xmax,ymin,ymax)
    for i=1:n
        s=0
        for j=1:n
            if j==i then
            else
                s=s+abs(A(i,j))
            end
        end
        circle(s,real(A(i,i)),imag(A(i,i)))
    end
    B=spec(A)
    for i=1:n
        plot(real(B(i)),imag(B(i)),'o')
    end
endfunction

function circle(r,x,y)
    t = linspace(x-r,x+r,1000*ceil(r))
    plot(t,sqrt(r^2-((t-x).^2))+y)
    plot(t,-sqrt(r^2-((t-x).^2))+y)
endfunction

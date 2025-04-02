function aaa = AssociatedLaguerrePol(q,p)
    syms x;
    pol = exp(-x)*x^(p+q);
    
    if p == 0
        f = pol;
    else
        f = diff(pol,p);
    end
   
    funkcja = ((x^(-q)*exp(x))/factorial(p))*f;
    
    aaa=matlabFunction(simplify(funkcja));
end
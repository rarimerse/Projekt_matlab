function R = RadialHarm(n,l,r)
    a = 1; %promien orbity Bohra dla wodoru - stala
    f = AssociatedLaguerrePol(2*l+1,n-l-1);
    if n-l-1 == 0
        F = 1;
    else
        F = f(2*r/(n*a));
    end
    R =(2/(n*a)).^(1.5).*exp(-r/(n*a)).*(2*r/(n*a)).^l.*F;
end

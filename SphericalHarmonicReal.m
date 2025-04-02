function Y = SphericalHarmonicReal(l, m, theta, phi)
%jezeli m jest ujemne, to nasza harmonijka jest symetrycznie odbita względem jej dodatniego odpowiednika, to
%znaczy na wykresie, gdzie harmonijka ma dwa kolory, które oznaczają jej
%znak, zmieniają się one miejscami. Ta funkcja ma za zadanie to uwzględnić
    if (m<0)
        Y =(-1)^m * imag(SphericalHarmonic(l,abs(m),theta,phi)); %% ze wzoru Yl(-m)=(-1)^m Ylm* , czyli dla m<0 potrzebujemy imag
    elseif (m==0)
        Y = real(SphericalHarmonic(l,m,theta,phi));
    elseif (m>0)
        Y =(-1)^m * real(SphericalHarmonic(l,m,theta,phi));
    end
end
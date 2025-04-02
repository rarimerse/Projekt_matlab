function Ylm = SphericalHarmonic (l,m, theta, phi)
Plm = legendre(l,cos(theta));
if l ~= 0
    Plm = reshape(Plm(abs(m)+1, :, :), size(theta));
end
a = (2*l+1) * factorial(l-abs(m));
b= 4*pi*factorial(l+abs(m));
c=sqrt(a/b);
Ylm = c .*Plm.*exp(1i*m*phi);
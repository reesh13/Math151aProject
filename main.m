f = @(x) sin(x).^2;
a = 1;
b = 3;
n = 4;

I = gauss_legendre_quadrature(f, a, b, n);
fprintf('Approximate integral: %.6f\n', I);
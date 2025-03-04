f = @(x) sin(x).^2;
a = 1;
b = 3;
n = 4;

I = gauss_legendre_quadrature(f, a, b, n);
fprintf('Approximate integral using Gauss Legendre: %.6f\n', I);

I = composite_trapezoid_rule(f, a, b, n);
fprintf('Approximate integral using Composite Trapezoid: %.6f\n', I);

I = composite_simpsons_rule(f, a, b, n);
fprintf('Approximate integral using Composite Simpsons: %.6f\n', I);
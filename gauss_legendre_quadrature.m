function I = gauss_legendre_quadrature(f, a, b, n)
    % f is a function handle: such as @(x) sin(x).^2 
    % Can also use naive_nodes_weights, but it is much slower
 [nodes, weights] = GW_nodes_weights(n);
 transformed_nodes = ((b - a) / 2) * nodes + (a + b) / 2;
 I = ((b - a) / 2) * sum(weights .* f(transformed_nodes));
end

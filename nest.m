% Nested Multiplication
% Evaluates polynomial form using Horner's Method
% Inputs:
%   d: degree of polynomial
%   c: An array of d+1 coefficients
%   x: x-coordinate x at which to evaluate
%   b: array of d base points, if needed
% Output: value y of polynomial at x
%
% example:
% nest(4, [-1 5 -3 3 2], 1/2, [0 0 0 0 ])
%
%ans =
%
%   1.250000000000000

function y = nest(d, c, x, b)
if nargin<4, b=zeros(d,1); end
y = c(d + 1);
for i = d: -1: 1
    y = y .* (x - b(i)) + c(i);
end
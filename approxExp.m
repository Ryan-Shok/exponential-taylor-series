function approxExp(x)
%
% approximate the exponential function at x using the Taylor series
% expansion 1 + x + (1/2)x^2 + (1/6)x^3 + ...
% no matter how large x is, the power x^n in the numerator will eventually
% become smaller than the n! (n-factorial) in the denominator, so the 
% terms eventually become small enough that they no longer change the 
% accumulated sum
%
n = 0;
term = single(1);
%
% terminates when term is no different than 0
%
possum = 1;
negsum = 0;
while term ~= 0
    % oldsum = newsum;
    n = n + 1;
    term = term*x/n; % term has the value (x^n)/(n!)
    % Initialize the sums for positive and negative terms
    if term > 0
        possum = possum + term;
    else
        negsum = negsum + term;
    end
    % newsum = newsum + term;
    % fprintf('n = %d, term = %g, newsum = %g\n', n,term,newsum);
    fprintf('n = %d, term = %g, possum = %g, negsum = %g\n', n,term,possum,negsum);
end
fprintf('from summing the series,     exp(x) = %g\n', possum + negsum);
fprintf('using the standard function, exp(x) = %g\n', exp(x))



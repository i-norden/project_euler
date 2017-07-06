function [ lpfs ] = largestprimefactor( number )
%Finds the largest prime factor of a given number
%Function call: largestprimefactor(number)
primes = zeros(ceil(sqrt(number)), 1);
pfs = zeros(ceil(sqrt(number)), 1);
for i = 1:ceil(sqrt(number))
    if isprime(i)
        primes(i) = i;
    end
end
for i = 1:ceil(sqrt(number))
    if mod(number, primes(i)) == 0 
        pfs(i) = primes(i);
    end
end
lpfs = max(pfs);
end


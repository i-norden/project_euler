function [ isit ] = isprime( number )
%Checks if a number is prime and returns true or false
%Function call: isprime(number)
isit = true;
if number == 0 || number == 1
    isit = false;
elseif number == 2 || number == 3 || number == 5
    isit = true;
end 
for i = 2:ceil(sqrt(number))
    if mod(number, i) == 0
        isit = false;
    end 
end
end
    
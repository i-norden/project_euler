function [ isit ] = isprime( number )
%Checks if a number is prime and returns true or false
%Function call: isprime(number)
switch number 
    case 0 || 1
        isit = false;
    case 2 || 3 || 5
        isit = true;
    case mod(number, 2) == 0 || mod(number, 5) == 0
        isit = false;
    otherwise 
        array = 2:sqrt(number);
        if mod(number, array) == 0
            isit = false;
        else
            isit = true;
        end
end
end


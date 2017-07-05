function [ int ] = nonzerointeger( number )
%Checks whether or not a number is a non-zero integer, returns true or false
%Function calll: nonzerointeger(number)
if number == floor(number) && number ~= 0
    int = true;
else 
    int = false;
end
end


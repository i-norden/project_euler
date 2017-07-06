function [ sumtotal ] = evenfibsum( max )
%Function returns the sum of all the even-valued Fibonacci sequence values
%below the given max value
%Function call: evenfibsum(max)
array = [0, 1];
evens = [];
array(3) = array(2) + array(1);
while array(3) <= max
    if mod(array(3), 2) == 0
        evens = [evens, array(3)];
    end
    array(1) = array(2);
    array(2) = array(3);
    array(3) = array(2) + array(1);
end
sumtotal = sum(evens);
end 


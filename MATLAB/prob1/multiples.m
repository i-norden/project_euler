function [ mult_array ] = multiples( number, mult1, mult2 )
% Generates and returns an array containing all the multiples of mult1 and mult2 below a max number
% Function call: multiples(maxnumber, multiple1, multiple2)
mult_array = zeros(number, 1);
for i = 1:number
  if mod(i, mult1) == 0 || mod(i, mult2) == 0
    mult_array(i) = i;
  end
end
end


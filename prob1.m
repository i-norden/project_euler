%script to request input and perform calculation
cont == false;
number = input("Please enter the maximum number: ");
while cont == false
  if isinteger(number)
    cont == true
  else
    number = input("Please enter the maximum number: ");
  end
end
mult1 = input("Please enter the first multiple: ");
while cont == false
  if isinteger(mult1)
    cont == true;
  else
    number = input("Please enter the first multiple: ");
  end
end
mult2 = input("Please enter the second multiple: ");
while cont == false
  if isinteger(mult2)
    cont == true;
  else
    number = input("Please enter the second multiple: ");
  end
end
multarray = multiples(number, mult1, mult2);
sumtotal = sumarray(multarray);
disp ("The sum total of the all the multiples of %s or %s below %s is %s.\n", mult1, mult2, number, sumtotal);
end


function multarray = multiples(number, mult1, mult2)
% generates and returns an array containing all the multiples of mult1 and mult2 below a max number
% function call: multiples(maxnumber, multiple1, multiple2)
multarray = zeros(number, 1);
for i = 1:number
  if mod(i, mult1) == 0 || mod(i, mult2) == 0
    multarray(i) = i;
  end
end
end


function sumtotal = sumarray(array)
% returns the sum of an array
% function call: sumarray(array)
sumtotal = sum(array);
end

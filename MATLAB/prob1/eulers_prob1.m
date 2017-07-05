%script to request input and perform calculation
cont = 0;
number = input('Please enter the maximum number: ');
while cont ~= 1
  if nonzerointeger(number)
    cont = 1;
  else
    number = input('Please enter the maximum number: ');
  end
end
cont = 0;
mult1 = input('Please enter the first multiple: ');
while cont ~= 1
  if nonzerointeger(number)
    cont = 1;
  else
    number = input('Please enter the first multiple: ');
  end
end
cont = 0;
mult2 = input('Please enter the second multiple: ');
while cont ~= 1
  if nonzerointeger(number)
    cont = 1;
  else
    number = input('Please enter the second multiple: ');
  end
end
multarray = multiples(number, mult1, mult2);
sumtotal = sumarray(multarray);
fprintf ('The sum total of the all the multiples of %.1f or %.1f below %.1f is %.2f.\n', mult1, mult2, number, sumtotal);

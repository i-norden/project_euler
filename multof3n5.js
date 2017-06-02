/*

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

*/


// makes array of all numbers
var array = [];
var arrayFunction = function(number, multiple1, multiple2) {
    for (i = 1; i <= number; i++) {
        if (i % multiple1 === 0 || i % multiple2 === 0) {
            array.push(i);
        }
    }
}

arrayFunction(100, 3, 5);
console.log(array);


//to sum array of numbers
var sum = 0;
var sumFunction = function() {
  for (i = 0; i < array.length; i++) {
  sum += array[i];
  }
}

sumFunction();
console.log(sum);

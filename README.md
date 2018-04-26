# ml-c-vsSnek

# Self Dividing Numbers

A self-dividing number is a number that is divisible by every digit it contains.

For example, 128 is a self-dividing number because 128 % 1 == 0, 128 % 2 == 0, and 128 % 8 == 0.

Also, a self-dividing number is not allowed to contain the digit zero.

Given a lower and upper number bound, output a list of every possible self dividing number, including the bounds if possible.

Example 1:
Input: 22
Output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]

# Hint: 
For each number in the range, check whether it is self dividing by converting that number to a character array (or string in Python), then checking that each digit is nonzero and divides the original number.

# Timing:
Using stopwatches, the contestants will begin coding at the same time. They will be timed untill they can produce the correct solution. 
Using the command "time ./will" or "time python sol.py". The outputed run time will then be deducted from overall coding time. 


# Grading
the amount of time it takes to code * the time it takes to run. 

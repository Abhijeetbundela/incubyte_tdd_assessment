This is a Dart implementation of the String Calculator Kata using Test-Driven Development (TDD).

Features
Returns 0 for an empty string
Single number
New line (\n) as a delimiter
Multiple numbers separated by commas
Custom delimiters (//;\n1;2 → delimiter is ;)
Throws error for negative numbers and lists them in the message

How to Run
# Install dependencies
dart pub get

# Run the program
dart run

# Run tests
dart test

Example
add("1,2,3"); // returns 6
add("//;\n1;2"); // returns 3

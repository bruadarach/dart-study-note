//  number
void main() {
  int number1 = 1;
  int number2 = 2;
  
  print(number1 > number2); // false
  print(number1 < number2); // true
  print(number1 >= number2); // false
  print(number1 <= number2); // ture
  print(number1 == number2); // false
  print(number1 != number2); // true
}

// type
void main() {
  int number1 = 1;
  print(number1 is int); // true
  print(number1 is String); // false
  
  print(number1 is! int); // false
  print(number1 is! String); // true
}
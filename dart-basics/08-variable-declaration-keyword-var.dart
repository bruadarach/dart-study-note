// In Dart, the var keyword is a type inference keyword, 
// which means it allows you to declare a variable 
// without explicitly specifying its type. 
// Instead, the Dart compiler infers the type based on the assigned value.

void main() {
  var name = "Sujeong";
  var age = 3;
  var challenge = 99.9;
  var isTrue = true;
  
  print(name);
  print(age);
  print(challenge);
  print(isTrue);
  
  print(name.length);
  print(age.isOdd);
  print(challenge.ceil());
  print(isTrue.toString());
}

// How to check the type of variables?  runtimeType
print(age.runtimeType); // int
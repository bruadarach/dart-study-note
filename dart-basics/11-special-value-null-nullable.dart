// null is a special value that represents the absence of a value or the lack of a meaningful value.
// ? means → data type or null

// Non-nullable
void main() {
  String name = "Sujeong";
  print(name);
  
  name = null;
  //   Error: The value 'null' can't be assigned to a variable of type 'String' because 'String' is not nullable.
  //   name = null;
  print(name);
}

// Nullable
void main() {
  String? name = "Sujeong";
  print(name);
  
  name = null;
  print(name);
}

// !
// In Dart, the exclamation mark (!) is known as the "null assertion operator". It guarantees that the value is NOT NULL.
void main() {
  String? name = "Sujeong";
  print(name!);
}

// ??
// If it's null, replace it with the value on the right.
void main() {
  double? number = 1.0;
  number = null;
  number ??= 2.0;
  print(number); // 2
}

void main() {
  double? number = 1.0;
  number ??= 2.0;
  print(number); // 1
}
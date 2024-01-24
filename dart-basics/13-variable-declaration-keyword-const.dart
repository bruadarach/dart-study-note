// 'const' is assigned at 'compile time'

// In Dart, both final and const are both used to declare variables 
// whose values cannot be changed. 

// commonality (1) : final and const can omit data types.
final String name = 'Sujeong';
const String name = 'Sujeong';

final name = 'Sujeong'; // omit data type
const name = 'Sujeong'; // omit data type

// commonality (2) : final and const cannot be reassigned.
void main() {
  final String name = 'Sujeong';
  print(name); 
  
  name = 'Lucky'; // Error: Can't assign to the final variable 'name'.
}

void main() {
  const String name = 'Sujeong';
  print(name);
  
  name = 'Lucky'; // Error: Can't assign to the const variable 'name'.
}

// difference
// final is assigned at 'compile time'
// The const keyword is used to declare variables whose values must be known at compile time. 
// The value assigned to a const variable must be a constant expression.

// e.g) DateTime
// The current date and time is assigned at the moment 
// when the "Run" button is pressed and then "the code is actually executed".
void main() {
  DateTime now = DateTime.now();
  print(now); // 2023-12-09 07:57:51.745

  print('1');
  print('2');
  print('3');
  print('4');
  print('5');

  DateTime now2 = DateTime.now();
  print(now2); // 2023-12-09 07:57:51.746
}

// 'final' is OK
// However, 'const' throws an ERROR!
// Why? DateTime.now() involves runtime computation
void main() {
	// build 타임에 값을 알고 있지 않아도 된다. 
	// final은 작성하는 순간에 값을 모르고 있어도 된다. 빌드 타임에 (코드가 실행되는 순간에) 가져오면 된다. 
  final DateTime now = DateTime.now();
  print(now); // 2023-12-09 07:57:51.745

	// build 타임에 값을 알고 있어야 한다.
	// const는 작성하는 이 순간에 값을 알고 있어야 한다. 
  const DateTime now2 = DateTime.now();
  print(now2); // ERROR: The constructor being called isn't a const constructor.
}
/* 
Declaration
parameter / argument
  - Positional parameter
  - Optional parameter
      - handle `null` with ? and ??
  - Named parameter
      - use `{ }` and `required`
      - Named + Optional parameter

void 
  - void : void is a keyword used to indicate that a function or method does not return any value.
*/

/* positional and optional parameter */
// 메인 함수는 자동으로 실행 됨.
void main() {
  addNumbers(10, 20, 30);
  addNumbers(1, 2, 3);
  addNumbers(1);
}

// add three numbers and tell if it the sum is odd or even.
// 메인 함수가 아니면 부르기 전까지 함수가 실행되지 않음
// parameter / argument - 매개변수 
// positional parameter - 순서가 중요한 파라미터
// optional parameter - 있어도 되고 없어도 되는 파라미터

//addNumbers(int x, [int y = 0, int z = 0]) { // positional parameter // set default value
addNumbers(int x, [int? y, int? z]) { // positional parameter // optional parameter
  print('addNumbers executed');
  
//   int x = 10;
//   int y = 20;
//   int z = 30;
  y ??= 0; //  Dart에서 사용되는 널 병합 할당 연산자인 ??=를 나타냅니다. 
  z ??= 0; // 이 연산자는 변수가 null인 경우에만 오른쪽의 값을 할당합니다. 변수가 이미 값이 있다면 할당 연산을 수행하지 않습니다.
  
  int sum = x + y + z;
  
//   print('x : $x');
//   print('y : $y');
//   print('z : $z');
  
  if (sum  % 2 == 0) {
    print('Even number');
  } else {
    print('Odd number');
  }
}

/* named parameter - 이름이 있는 파라미터, 순서가 중요하지 않음 */
// use `{ }` and `required`
// Named + Optional parameter
void main() {
  addNumbers(x : 10, y : 20, z : 30);
  addNumbers(z : 60, y : 50, x : 40);
  addNumbers(y : 50, x : 40); // z는 named parmeter + optional parameter이기 때문에 생략 가능
}

// named parameter - 이름이 있는 파라미터 (순서가 중요하지 않다.)
addNumbers({
  required int x, // required - 필수 파라미터
  required int y, 
  int z = 0, // named parmeter + optional parameter
}) {
  
  int sum = x + y + z;
  
  print('x : $x');
  print('y : $y');
  print('z : $z');
  
  if (sum  % 2 == 0) {
    print('Even number');
  } else {
    print('Odd number');
  }
}

/* Positional + Named + Optional parameters */
// void - 공허
void main() {
  int result = addNumbers(10, y : 20, z : 30); // positional parameter
  int result2 = addNumbers(10, z : 60, y : 50,);
  int result3 = addNumbers(10, y : 50);
  
  print(result + result2 + result3);
}

// parameter / argument - 매개변수 
// positional parameter - 순서가 중요한 파라미터
// optional parameter - 있어도 되고 없어도 되는 파라미터
// named parameter - 이름이 있는 파라미터 (순서가 중요하지 않다.)
int addNumbers(int x, {
  required int y,
  int z = 0, // named parmeter + optional parameter
}) {
  
  int sum = x + y + z;
  
  print('x : $x');
  print('y : $y');
  print('z : $z');
  
  if (sum  % 2 == 0) {
    print('Even number');
  } else {
    print('Odd number');
  }
  
  return sum;
}
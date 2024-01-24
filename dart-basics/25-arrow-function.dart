// In Dart, an arrow function (also known as a fat arrow function) is a concise way 
// to define a function, especially when the function body consists of a single expression.!== JavaScript
// returnType functionName(parameters) => expression;

// 다트에서는 (자바스크립트와는 다르게) 함수 몸체가 단일 표현식인 경우 중괄호({}) 대신 화살표(=>)를 사용하여 함수를 정의할 수 있습니다.
void main() {
  int result = addNumbers(10, y: 20, z: 30);
  int result2 = addNumbers(10, z: 60, y: 50);
  int result3 = addNumbers(10, y: 50);

  print(result + result2 + result3);
}

int addNumbers(int x, {required int y, int z = 0}) => x + y + z; // arrow function

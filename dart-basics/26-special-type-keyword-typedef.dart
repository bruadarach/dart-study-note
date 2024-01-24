// - typedef
// - signature
// - operation

// typedef 함수랑 비슷하지만 함수의 바디가 없음
void main() {
  Operation operation = add;
  
  int result = operation(10, 20, 30);
  print(result); // 60
  
  operation = subtract;
  int result2 = operation(10, 20, 30);
  print(result2); // -40
  
  int result3 = calculate(30, 40, 50, add);
  print(result3); // 120
}

// signature
typedef Operation = int Function(int x, int y, int z);

// add
int add(int x, int y, int z) => x + y + z;

// subtract
int subtract(int x, int y, int z) => x - y - z;

// calculate
int calculate(int x, int y, int z, Operation operation) { // Practical way to use
  return operation(x, y, z);
}
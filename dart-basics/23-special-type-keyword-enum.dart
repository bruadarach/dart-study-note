// - Enum declarations in Dart are typically done at the top level of a Dart file, outside of any function.
// - A way to represent a fixed set of values or states in a type-safe manner.
// - Provides a clear and concise way to work with a predefined set of options.
// Dart에서 enum은 열거형(Enumeration)을 나타내는 키워드입니다. 
// enum을 사용하면 명명된 상수의 집합을 정의할 수 있습니다. 
// 각각의 상수는 고유한 이름을 가지며, 이를 통해 코드를 읽기 쉽고 이해하기 쉽게 만들 수 있습니다.

enum Status {
  approved, // 승인
  pending, // 대기
  rejected, // 거절
}

void main() {
  Status status = Status.pending;
  
  if (status == Status.approved) {
    print('승인입니다.');
  } else if (status == Status.pending) {
    print('대기입니다.'); // '대기입니다.'
  } else {
    print('거절입니다');
  }
}
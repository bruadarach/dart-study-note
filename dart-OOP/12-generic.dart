/* 
제네릭
- 타입을 외부에서 받을 때(=동적으로 결정) 사용
- 제네릭은 타입을 외부에서 지정하거나 제공할 수 있도록 하는 것이 맞습니다. 
- 이는 코드 작성 시에 타입을 동적으로 결정할 수 있게 하며, 코드의 재사용성과 유지보수성을 높이는 데 도움이 됩니다. 
- 제네릭을 사용하면 동일한 코드를 여러 데이터 타입에 대해 적용할 수 있으므로, 타입에 대한 유연성이 높아집니다.
*/

// 예제에서 Box 클래스는 제네릭으로 선언되어 있습니다. 
// <T>는 타입 매개변수를 나타내며, 이 클래스를 사용할 때 실제 타입을 전달하여 인스턴스를 생성할 수 있습니다. 
//이러한 유연성은 코드를 더 일반화하고 재사용 가능하게 만듭니다.

// example 1
void main() {
  // 제네릭 클래스 인스턴스 생성 (정수 타입)
  Box<int> intBox = Box<int>(42);
  print(intBox.getValue()); // 출력: 42

  // 제네릭 클래스 인스턴스 생성 (문자열 타입)
  Box<String> stringBox = Box<String>('Hello, Dart!');
  print(stringBox.getValue()); // 출력: Hello, Dart!
}

// 제네릭 클래스
class Box<T> {
  T value;

  Box(this.value);

  T getValue() {
    return value;
  }
}

// example 2
void main() {
  Lecture<String, String> lecture1 = Lecture('1','lecture1');
  lecture1.printIdType(); // String String
  
  Lecture<int, String> lecture2 = Lecture(2,'lecture1');
  lecture2.printIdType(); // int String
  
}

// generic - 타입을 외부에서 받을 때 사용
class Lecture<T,X>{
//   final int id;
//   final String name;
  final T id;
  final X name;
  
  
  Lecture(this.id, this.name);
  
  void printIdType() {
    print(id.runtimeType);
    print(name.runtimeType);
  }
}
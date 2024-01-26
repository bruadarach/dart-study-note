/*
Interface 인터페이스
- Dart에는 명시적인 **`interface`** 키워드는 없습니다.
- Dart에서 클래스를 통해 인터페이스를 구현할 수 있습니다. 클래스는 다른 클래스를 상속하여 인터페이스의 일부 또는 전체를 구현할 수 있습니다.
- 인터페이스는 클래스의 뼈대를 제공하며, 어떤 메서드와 속성이 있어야 하는지를 정의합니다. 클래스는 이 뼈대에 맞게 실제 동작을 구현하게 됩니다. → 클래스 필수 구조 정의 및 강제
- `implements` 를 사용.
- interface 앞에 `abstract`를 추가하여 인스턴스화 방지
 */

 // example 1
 // 인터페이스처럼 사용할 수 있는 클래스
class MyInterface {
  void doSomething();
}

// 클래스가 인터페이스를 구현
class MyClass implements MyInterface {
  @override
  void doSomething() {
    print('Doing something!');
  }
}

void main() {
  // MyClass 인스턴스 생성
  MyClass myInstance = MyClass();

  // 인터페이스 메서드 호출
  myInstance.doSomething(); // 출력: Doing something!
}

// example 2
void main() {
  BoyGroup bts = BoyGroup('BTS');
  GirlGroup redVelvet = GirlGroup('레드벨벳');
  
  bts.sayName(); // 제 이름은 BTS입니다.
  redVelvet.sayName(); // 제 이름은 레드벨벳입니다.
}

// interface
class IdolInterface {
  String name;

  IdolInterface(this.name);

  void sayName() {}

// interface에 'abstract'를 추가하여 인스턴스화 방지
  IdolInterface test = IdolInterface('블랙핑크');

// 타입 비교
  print(bts is IdolInterface); // true
  print(bts is BoyGroup); // true
  print(bts is GirlGroup); // false

}

abstract class BoyGroup implements IdolInterface { 
  String name;

  BoyGroup(this.name);

  void sayName() {
    print('제 이름은 $name입니다.');
  }
}


class GirlGroup implements IdolInterface { 
  String name;

  GirlGroup(this.name);

  void sayName() {
    print('제 이름은 $name입니다.');
  }
}
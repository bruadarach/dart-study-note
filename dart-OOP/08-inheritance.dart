/*
- 상속을 받으면 부모 클래스의 모든 속성을 자식 클래스가 부여 받는다.
- 다트(Dart)에서는 클래스 간의 상속을 지원하며, 상속은 코드 재사용성과 객체 지향 프로그래밍의 핵심 원칙 중 하나입니다. Dart에서 클래스 상속을 사용하는 기본 구조는 다음과 같습니다:
- 상속을 통해 자식 클래스는 부모 클래스의 멤버(변수와 메서드)를 재사용할 수 있습니다.
- 자식 클래스에서 부모 클래스의 `메서드를 오버라이딩(overriding)`하여 동일한 메서드 이름으로 새로운 동작을 정의할 수 있습니다.
    - 메소드 오버라이딩 : 자식 클래스가 부모 클래스의 메서드를 다시 정의하는 것 (상속 관계에서 발생)
*/

// 부모 클래스
class Animal {
  String name;

  Animal(this.name);

  void makeSound() {
    print('Some generic sound');
  }
}

// 자식 클래스
// - **`Animal`**은 부모 클래스
// - **`Dog`**는 **`Animal`**을 상속받은 자식 클래스
//     - **`Dog`** 클래스는 **`Animal`** 클래스의 **`name`** 변수와 **`makeSound`** 메서드를 상속받았습니다.
//     - **`Dog`** 클래스는 **`Animal`** 클래스의 메서드를 상속받고 `override` 하였습니다.
//         - 'Some generic sound' → 'Woof! Woof!'
class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print('Woof! Woof!');
  }

  void bark() {
    print('Barking!');
  }
}

void main() {
  // 자식 클래스의 인스턴스 생성
  Dog myDog = Dog('Buddy');

  // 부모 클래스의 메서드 호출
  myDog.makeSound(); // Woof! Woof!

  // 자식 클래스의 메서드 호출
  myDog.bark();      // Barking!
}

// other example
void main() {
  print('-------Idol-----');
  Idol apink = Idol(name: '에이핑크', membersCount: 5);
  apink.sayName(); // 저는 에이핑크 입니다.
  apink.sayMembersCount(); // 에이핑크은 5명의 멤버가 있습니다.

  print('-------BoyGroup-----');
  BoyGroup bts = BoyGroup('BTS', 7);
  bts.sayName(); // 저는 BTS 입니다.
  bts.sayMembersCount(); // BTS은 7명의 멤버가 있습니다.
  bts.sayMale(); // 저는 남자 아이돌입니다.
  
  print('-------GirGroup-----');
  GirlGroup redVelvet = GirlGroup('Red Velvet', 5);
  redVelvet.sayName();
  redVelvet.sayMembersCount();
  redVelvet.sayFemale(); // 저는 여자 아이돌입니다.
  
  print('-------Type Comparison 1-----');
  print(apink is Idol); // true
  print(apink is BoyGroup); // false 
  print(apink is GirlGroup); // false
  
  print('-------Type Comparison 2-----');
  print(bts is Idol); // true
  print(bts is BoyGroup); // true 
  print(bts is GirlGroup); // false
  
  print('-------Type Comparison 3-----');
  print(redVelvet is Idol); // true
  print(redVelvet is BoyGroup); // false
  print(redVelvet is GirlGroup); // true
}

class Idol {
  String name;
  int membersCount;

  Idol({
    required this.name,
    required this.membersCount,
  });

  void sayName() {
    print('저는 ${this.name} 입니다.');
  }

  void sayMembersCount() {
    print('${this.name}은 ${this.membersCount}명의 멤버가 있습니다.');
  }
}

class BoyGroup extends Idol {
  // 자식클래스 etends 부모클래스
  BoyGroup(String name, int membersCount)
      : super(
            // super은 부모(Idol) 클래스의 Constructor를 의미
            name: name,
            membersCount: membersCount);
  void sayMale() {
    print('저는 남자 아이돌입니다.');
  }
}

class GirlGroup extends Idol {
  GirlGroup(String name, int membersCount)
      : super(name: name, membersCount: membersCount);
  
  void sayFemale() {
    print('저는 여자 아이돌입니다.');
  }
}
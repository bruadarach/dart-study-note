/*
OOP: It is a programming paradigm that uses objects – which are `instances` of `classes` – for organizing and structuring code. Object-oriented programming is based on several fundamental principles, including:

1. **`Encapsulation`:** Encapsulation is the bundling of data (attributes) and the methods that operate on the data into a single unit known as a class. It hides the internal details of how an object works and exposes only what is necessary.
2. **`Inheritance`:** Inheritance is a mechanism that allows a class (subclass or derived class) to inherit properties and behaviors from another class (superclass or base class). This promotes code reusability and establishes a hierarchy of classes.
3. **`Polymorphism`:** Polymorphism allows objects of different classes to be treated as objects of a common base class. This enables flexibility and extensibility in code. Polymorphism can take the form of method overriding and interfaces in some languages.
4. **`Abstraction`:** Abstraction involves simplifying complex systems by modeling classes based on real-world entities and focusing on relevant attributes and behaviors. It allows programmers to deal with high-level representations without worrying about low-level details.
*/

void main() {
  Idol blackPink = Idol(); // new is optional. new Idol is also fine.
  
  print(blackPink.name);
  print(blackPink.members);
  blackPink.sayHello();
  blackPink.introduce();
  
//   블랙핑크
//   [지수, 로제, 제니, 리사]
//   안녕하세요 블랙핑크 입니다.
//   저희 멤버는 지수, 제니, 리사, 로제가 있습니다.
}

// Idol class
// name (이름) - 변수
// member (멤버들) - 변수
// sayHello (인사) - 함수
// introduce (멤버소개) - 함수
class Idol {
  String name = '블랙핑크';
  List<String> members = ['지수', '로제', '제니', '리사'];
  
  void sayHello() {
    print('안녕하세요 블랙핑크 입니다.');
  }
  
   void introduce() {
    print('저희 멤버는 지수, 제니, 리사, 로제가 있습니다.');
  }
}
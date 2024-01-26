/*
- Private으로 만들고 싶은 곳에 `_` 언더스코어 추가
- 해당 변수나 함수는 동일한 라이브러리나 파일 안에서만 접근 가능하게 됩니다.
    - 일반적으로 private 변수와 함수는 해당 클래스 내부에서만 사용되어야 하므로, 클래스 내부에서 private 변수에 접근하는 것은 흔한 일입니다.
- 다른 클래스에서는 private 변수에 직접 접근할 수 없wㅣ만, 대신 public 메서드나 변수를 통해 private 멤버에 접근할 수 있습니다.

 ↔ public variables
 */

 // 예제 1) Idol 클래스를 Private으로 만들고 싶으면? _Idol
 void main() {
  // `final` value is initialized
  final _Idol blackPink = _Idol( // _ 추가
    '블랙핑크',
    ['지수', '로제', '제니', '리사'],
  );
 
  final _Idol bts = _Idol.fromList([ // _ 추가
    ['RM', '슈가', '진', '제이홉', '지민', '뷔', '정국'],
    'BTS'
  ]);
  
  print(blackPink.name);
  print(blackPink.members);
  blackPink.sayHello();
  blackPink.introduce();
  
  // getter 
  print(blackPink.firstMember);
  print(bts.firstMember);
  
  // setter
  blackPink.firstMember = '수지';
  print(blackPink.firstMember); // '수지'
  print(blackPink.members); // [수지, 로제, 제니, 리사]
  
}

class _Idol {
  final String name;
  final List<String> members;

  _Idol(this.name, this.members); // _ 추가

  _Idol.fromList(List values) // _ 추가
      : this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print('안녕하세요 ${this.name}입니다.');
  }

  void introduce() {
    print('저희 멤버는 ${this.members}가 있습니다.');
  }

  // getter {} : String을 Return해주는 이름이 firstMember인 Getter
  String get firstMember {
    return this.members[0];
  }
  
  // setter (only 1 parameter) {} : Setting하다. 값을 새로 지정하는 기능
  // 첫번째 멤버 변경 기능
  set firstMember (String name) {
    this.members[0] = name; // final 이어도 가능
  }
  
}

// 얘제 2) 클래스의 변수나 함수(메소드)를 Private으로 만들기
// 다른 클래스에서는 **`_privateVar`**이나 **`_privateMethod`**에 직접 접근할 수 없습니다. 
// 대신 public 메서드나 변수를 통해 private 멤버에 접근할 수 있습니다.
void main() {
  MyClass myObject = MyClass();

  print(myObject.publicVar); // public 변수에 접근 가능
  myObject.publicMethod();    // public 메서드에 접근 가능

  // private 변수에 직접 접근할 수 없음
  // print(myObject._privateVar); // 에러 발생

  // private 메서드에 직접 접근할 수 없음
  // myObject._privateMethod(); // 에러 발생

  myObject.accessPrivateVar(); // public 메서드를 통해 private 변수에 접근 가능
}

class MyClass {
  // public 변수
  int publicVar = 42;

  // private 변수
  int _privateVar = 10;

  // public 메서드
  void publicMethod() {
    print('This is a public method');
  }

  // private 메서드
  void _privateMethod() {
    print('This is a private method');
  }

  // public 메서드에서 private 변수에 접근 가능
  void accessPrivateVar() {
    print('Accessing privateVar: $_privateVar');
  }
}
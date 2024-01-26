// - Immutable Programming
//     - 한번 값을 선언하면 변경할 수 없도록 코딩함.
//     - Once a value is assigned or created, it cannot be changed or modified.
//     - Use `final` keyword→ It will be initialized when creating an instance
//     - Good for debugging

// problem: data can be changed
void main() {
  // `final` value is initialized
  Idol blackPink = Idol(
    '블랙핑크',
    ['지수', '로제', '제니', '리사'],
  ); // new is optional. new Idol is also fine.

  blackPink.name = 'TEAM Sujeong Ji'; 
  
  print(blackPink.name);
  print(blackPink.members);
  blackPink.sayHello();
  blackPink.introduce();

//=> 원래 오리지널 데이터 
//   블랙핑크
//   [지수, 로제, 제니, 리사]
//   안녕하세요 블랙핑크 입니다.
//   저희 멤버는 지수, 제니, 리사, 로제가 있습니다.

//=> 바뀐 데이터
TEAM Sujeong Ji
[지수, 로제, 제니, 리사]
안녕하세요 TEAM Sujeong Ji입니다.
저희 멤버는 [지수, 로제, 제니, 리사]가 있습니다.
}

class Idol {
  String name;
  List<String> members;

	Idol(this.name, this.members);

  void sayHello() {
    print('안녕하세요 ${this.name}입니다.');
  }

  void introduce() {
    print('저희 멤버는 ${this.members}가 있습니다.');
  }
}

/* solution : use `final` or `const` keyword
해결법: 데이터 조작 방지
  1. 클래스의 변수를 `final`로 선언 : 한번 선언되면 값을 바꿀 수 없다.
    - 언제 선언이 되는가? 아래 코드 실행 시 선언 됨.
      '''
      Idol blackPink = Idol(
        '블랙핑크',
        ['지수', '로제', '제니', '리사'],
      );
      '''
  2. Constructor에 `const` 추가 : 한번 선언되면 값을 바꿀 수 없다. 
    - `const` 는 빌드 타임에 값을 알 수 있음.
        - C.f.) `DateTime.now().toString()` 같은 것은 우리가 빌드 타임에 const로 값을 넣을 수 없기 때문에 불가능.
        - 따라서, const로 선언할 수 있는 변수들로 구성된 Constructor의 파라미터들은 `const Constructor()`로 인스턴스를 만들 수 있다.
            - 기본 Constructor에만 `const` 추가함
            - 네임드 Constructor에는 `const` 추가 불가.
*/

void main() {
  // `final` value is initialized
  Idol blackPink = const Idol(
    '블랙핑크', // DateTime.now().toString() (X)
    ['지수', '로제', '제니', '리사'],
  ); // new is optional. new Idol is also fine.

  blackPink.name = 'TEAM Sujeong Ji'; 
  
  print(blackPink.name);
  print(blackPink.members);
  blackPink.sayHello();
  blackPink.introduce();

//=> 원래 오리지널 데이터 
//   블랙핑크
//   [지수, 로제, 제니, 리사]
//   안녕하세요 블랙핑크 입니다.
//   저희 멤버는 지수, 제니, 리사, 로제가 있습니다.
}

class Idol {
  final String name; // 클래스 변수를 final로 선언
  final List<String> members; // 클래스 변수를 final로 선언

	const Idol(this.name, this.members); // 클래스 constructor에 const 추가

  void sayHello() {
    print('안녕하세요 ${this.name}입니다.');
  }

  void introduce() {
    print('저희 멤버는 ${this.members}가 있습니다.');
  }
}
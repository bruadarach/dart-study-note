// named constructor
// 네임드 생성자는 네임드 파라미터와 비슷한 개념임.
void main() {
  Idol blackPink = Idol(
    '블랙핑크',
    ['지수', '로제', '제니', '리사'],
  ); // new is optional. new Idol is also fine.

  print(blackPink.name);
  print(blackPink.members);
  blackPink.sayHello();
  blackPink.introduce();

//   블랙핑크
//   [지수, 로제, 제니, 리사]
//   안녕하세요 블랙핑크 입니다.
//   저희 멤버는 지수, 제니, 리사, 로제가 있습니다.

//   Idol bts = Idol('BTS', ['RM', '진', '슈가']);
// named constructor
  Idol bts = Idol.fromList([
    ['RM', '진', '슈가'],
    'BTS',
  ]);

  print(bts.name);
  print(bts.members);
  bts.sayHello();
  bts.introduce();
//   BTS
//   [RM, 진, 슈가]
//   안녕하세요 BTS입니다.
//   저희 멤버는 [RM, 진, 슈가]가 있습니다.
}

// Idol class
// name (이름) - 변수
// member (멤버들) - 변수
// sayHello (인사) - 함수
// introduce (멤버소개) - 함수
// constructor (생성자)
class Idol {
  String name;
  List<String> members;

//   Idol(String name, List<String> members)
//       : this.name = name, // this means the current class
//         this.members = members;
  Idol(this.name, this.members);
  
  // named constructor
  Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print('안녕하세요 ${this.name}입니다.');
  }

  void introduce() {
    print('저희 멤버는 ${this.members}가 있습니다.');
  }
}
/*
final, const 키워드 사용하지 않음 (Setter → 수정이 가능해야 하니까)

- Getter : 데이터를 가져올 때
- Setter : 데이터를 (새로운 값으로) 설정할 때

- Getter, Setter 사용 이유? (vs. 메소드)
    - 사실 상, 기능적인 차이는 없음.
    - 뉘앙스의 차이
        - Getter은 데이터를 간단하게 가공할 때 → 첫 번째 멤버 가져오기.
        - (메소드) 함수는 로직이 많이 들어가는 형태에서 주로 사용하게 됨.
 */

 /*
그런데, Class는 immutable programming을 많이 하기 때문에 final 키워드를 많이 사용한다고 했는데, final을 지정해버리면 값을 바꿀 수 없잖아? 
    - 그러나! `List는 final이어도 값을 바꿀 수 있다!` (List의 특징)
    - 그러나! members를 List로 받아서 변경은 불가능
        - 수정이 불가능하니 Setter가 완전 쓸모없어져서 잘 안씀
        - 현대 Immutable Programming의 기조와도 맞지 않아서 'setter' 잘 안씀
*/

// 1. getter and setter
void main() {
  // `final` value is initialized
  Idol blackPink = Idol(
    '블랙핑크',
    ['지수', '로제', '제니', '리사'],
  );

  Idol bts = Idol.fromList([
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

class Idol {
  String name;
  List<String> members;

  Idol(this.name, this.members);

  Idol.fromList(List values)
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
    this.members[0] = name;
  }
}
 
// 2. List final이어도 값 변경 가능 (List의 특징)
// 3. members를 List로 받아서 변경은 불가능
void main() {
  // `final` value is initialized
  final Idol blackPink = Idol(
    '블랙핑크',
    ['지수', '로제', '제니', '리사'],
  );
  
  // getter 
  print(blackPink.firstMember);
  print(bts.firstMember);
  
  // setter
  blackPink.firstMember = '수지'; // 2. final 이어도 가능 (List의 특징)
  print(blackPink.firstMember); // '수지'
  print(blackPink.members); // [수지, 로제, 제니, 리사]
}

class Idol {
  final String name;
  final List<String> members; // 2. final이어도 값을 바꿀 수 있다! (List의 특징)

  Idol(this.name, this.members);

  Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print('안녕하세요 ${this.name}입니다.');
  }

  void introduce() {
    print('저희 멤버는 ${this.members}가 있습니다.');
  }

  // 1. getter {} : String을 Return해주는 이름이 firstMember인 Getter
  String get firstMember {
    return this.members[0];
  }
  
  // 1. setter (only 1 parameter) {} : Setting하다. 값을 새로 지정하는 기능
  // 첫번째 멤버 변경 기능
  set firstMember (String name) {
    this.members[0] = name; // final 이어도 가능
  }

	// 3. members를 List로 받아서 변경은 불가능
   set firstMember (List<String> members) {
    this.members = members; // 불가능
  }
}
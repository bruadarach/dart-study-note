// compare two instance of a class
// - 인스턴스(Idol blackPink)는 생성하면, 인스턴스는 메모리 공간에 올라간다. 
//    - 생성할 때 마다 새로 메모리에 올라간다. 
//    - 따라서, blackPink와 blackPink2는 같지 않다! 
// - 그러나, const를 추가하게 되면, blackPink와 blackPink2는 같은 인스턴스가 된다!

// blackPink != blackPink2
void main() {
  // `final` value is initialized
  Idol blackPink = Idol(
    '블랙핑크', // DateTime.now().toString() (X)
    ['지수', '로제', '제니', '리사'],
  ); // new is optional. new Idol is also fine.
  Idol blackPink2 = Idol(
    '블랙핑크', // DateTime.now().toString() (X)
    ['지수', '로제', '제니', '리사'],
  ); // new is optional. new Idol is also fine.
  
  print(blackPink.name);
  print(blackPink.members);
  blackPink.sayHello();
  blackPink.introduce();
  
  print(blackPink == blackPink2); // false

//=> 원래 오리지널 데이터 
//   블랙핑크
//   [지수, 로제, 제니, 리사]
//   안녕하세요 블랙핑크 입니다.
//   저희 멤버는 지수, 제니, 리사, 로제가 있습니다.
}

// const 추가 : blackPink == blackPink2 => true
void main() {
  // `final` value is initialized
  Idol blackPink = const Idol(
    '블랙핑크', // DateTime.now().toString() (X)
    ['지수', '로제', '제니', '리사'],
  ); // new is optional. new Idol is also fine.
  Idol blackPink2 = const Idol(
    '블랙핑크', // DateTime.now().toString() (X)
    ['지수', '로제', '제니', '리사'],
  ); // new is optional. new Idol is also fine.
  
  print(blackPink.name);
  print(blackPink.members);
  blackPink.sayHello();
  blackPink.introduce();
  
  print(blackPink == blackPink2); // true

//=> 원래 오리지널 데이터 
//   블랙핑크
//   [지수, 로제, 제니, 리사]
//   안녕하세요 블랙핑크 입니다.
//   저희 멤버는 지수, 제니, 리사, 로제가 있습니다.
}
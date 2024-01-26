/*
`객체 지향 프로그래밍`
- 4개의 속성이 선언 하지 않았는데 왜 존재하고 있을까요?
    - 4개의 속성은 최상위 부모인 Object의 메소드이다.
    - 클래스는 우리가 선언하자마자 사실상 extends Object{}를 하고 있다.
        - 왜냐하면 모든 클래스는 Object를 상속하고 있기 때문이다.
- 따라서, 모든 클래스의 최상위 부모는 Object이다.
*/

void main() {
  Test test = test();
  
  test. // Object의 메소드를 사용할 수 있다.
  // 1. hashCode
  // 2. runtimeType
  // 3. toString()
  // 4. noSuchMethod()
}

class Test{} // == class Test{} extends Object {}
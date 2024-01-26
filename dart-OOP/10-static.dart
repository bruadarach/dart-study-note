/*
Dart에서 클래스의 멤버를 정적으로 만들려면 **`static`** 키워드를 사용할 수 있습니다. 
정적 멤버는 클래스의 인스턴스와 관계없이 클래스 자체에 속하는 멤버입니다.
- 정적 변수(static variable)는 클래스의 인스턴스와 상관없이 해당 클래스에 속하는 변수입니다. 그래서 클래스 전체에서 공유되며, 인스턴스를 생성하지 않고도 해당 변수에 접근할 수 있습니다. 이것은 클래스의 "전역 변수"라고 생각할 수 있습니다.
- 정적 변수는 모든 인스턴스에서 동일한 값을 공유하며, 해당 클래스의 모든 인스턴스 간에 데이터를 공유하고 유지하기 위해 사용됩니다. 클래스의 정적 변수를 설정하면, 해당 클래스에 속한 모든 인스턴스가 이 값을 참조할 수 있습니다.
- 정적 메소드는 특정 인스턴스와 관련이 없으며, 해당 클래스의 모든 인스턴스에서 동일하게 동작합니다.
*/

void main() {
  Employee sujeong = Employee('수정');
  Employee deoqua = Employee('덕화');
 
  // sujeong에서 바꾸면 sujeong에만 적용 됨
  // 정적변수가 아닌 name은 해당 인스턴스에만 적용 됨.
  sujeong.name = '민지';
  print(sujeong.name); // `민지'
  sujeong.printNameandBuilding(); // 제 이름은 민지입니다. null에서 근무하고 있습니다.
  deoqua.printNameandBuilding(); // 제 이름은 덕화입니다. null에서 근무하고 있습니다.
  
  // 정적변수 building은 모든 인스턴스 sujeong, deoqua에 적용됨
  // 이유는, building 변수는 Class 자체에 귀속이 되기 때문에!
  // 즉,Class 자체에 귀속된 정적 변수는 모든 인스턴스에서 동일한 값을 공유
  Employee.building = '호수공원';
  sujeong.printNameandBuilding(); // 제 이름은 민지입니다. 호수공원에서 근무하고 있습니다.
  deoqua.printNameandBuilding(); // 제 이름은 덕화입니다. 호수공원에서 근무하고 있습니다.

	Employee.printBuilding(); // 저희는(모든 instances들은) 호수공원에서 근무하고 있습니다.
}

class Employee {
  // static은 instance에 귀속되지 않고 class에 귀속된다. 
  // String이긴 한데 null값이 들어가도 되는 값
  // building은 변수 이름. 알바생이 일하고 있는 건물
  static String? building;  
  String name;
  
  Employee(
  this.name,
  );
  
  void printNameandBuilding() {
    print('제 이름은 $name입니다. $building에서 근무하고 있습니다.');
  }
  
  static void printBuilding() {
    print('저희는 $building에서 근무하고 있습니다.');
  }
}

// other example
void main() {
  Employee sujeong = Employee('수정');
  Employee deoqua = Employee('덕화');
  
  sujeong.name = '민지'; // final 없으면 가능 // === instance에 귀속된다
	print(sujeong.name); // `민지'
  
}

class Employee {
  // static은 instance에 귀속되지 않고 class에 귀속된다. 
  // String이긴 한데 null값이 들어가도 되는 값
  // building은 변수 이름. 알바생이 일하고 있는 건물
  static String? building;  
  final String name;
  
  Employee(
  this.name,
  );
  
  void printNameandBuilding() {
    print('제 이름은 $name입니다. $building에서 근무하고 있습니다.');
  }
  
  static void printBuilding() {
    print('저는 $building에서 근무하고 있습니다.');
  }
}
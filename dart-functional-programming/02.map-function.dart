void main() {
  List<String> family = ["민지", "덕화", "JY, ""주원"];
  
  // .map() // 새로운 리스트 리턴함
  final newFamily = family.map((x){
    return '행복한 가족 $x';
  });
  print(family); // [민지, 덕화, JY, 주원] // family는 바뀌지 않음
  print(newFamily); // (행복한 가족 민지, 행복한 가족 덕화, 행복한 가족 JY, 주원) //=> () Iterable
  
  // Arrow 함수 사용
  final newFamily2 = family.map((x) => '사랑하는 $x');
  print(newFamily2.toList()); // [사랑하는 민지, 사랑하는 덕화, 사랑하는 JY, 주원]
  
  // 비교
  print(family == family); // true
  print(family == newFamily); // false // 새로운 리스트를 리턴받았기 때문
  print(newFamily == newFamily2); // false
}

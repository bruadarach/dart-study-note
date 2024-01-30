/*
List ↔ Map
- `asMap()`: 리스트를 맵으로 변환합니다. 각 원소의 인덱스가 키(key)가 되고, 원소 자체가 값(value)이 됩니다.
- `toList()`: 맵/셋을 리스트로 변환합니다. 키 또는 값의 컬렉션을 리스트로 가져올 수 있습니다.

List ↔ Set
- `toSet()`: 리스트를 세트로 변환합니다. (함수)
- `Set.from()`: 리스트를 세트로 변환합니다. (팩토리 생성자)
- `toList()`: 맵/셋을 리스트로 변환합니다. 키 또는 값의 컬렉션을 리스트로 가져올 수 있습니다.
*/

void main() {
  List<String> family = ['수지', '민지', '민지'];
  
  /* 형 변환 */
  print(family); // ['수지', '민지', '민지'];
  
  /* List to Map => asMap() */
  print(family.asMap()); // {0: 수지, 1: 민지, 2: 민지}
  /* Map to List => toList() */
  Map familyMap = family.asMap();
  print(familyMap.keys); // (0, 1, 2) // () => iterable
  print(familyMap.values); // (수지, 민지, 민지)
  /* Map to List => toList()*/
  print(familyMap.keys.toList()); // [0, 1, 2]
  print(familyMap.values.toList()); // [수지, 민지, 민지]
  
  /* List to Set => toSet(), Set.from() */
  print(family.toSet()); // {수지, 민지} 
  print(Set.from(family)); // {수지, 민지} 
  /* Set to List => toList() */
  Set familySet = Set.from(family);
  print(familySet.toList()); // [수지, 민지] 
}



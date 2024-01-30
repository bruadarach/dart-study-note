void main() {
  List<String> family = ['수지', '민지', '민지'];
  
  /* 형 변환 */
  print(family); // ['수지', '민지', '민지'];
  /* List to Map => asMap() */
  print(family.asMap()); // {0: 수지, 1: 민지, 2: 민지}
  /* List to Set => toSet() */
  print(family.toSet()); // {수지, 민지} 
  
  /* List to Map => asMap() */
  Map familyMap = family.asMap();
  print(familyMap.keys); // (0, 1, 2) // () => iterable
  print(familyMap.values); // (수지, 민지, 민지)
  /* Map to List => toList()*/
  print(familyMap.keys.toList()); // [0, 1, 2]
  print(familyMap.values.toList()); // [수지, 민지, 민지]
  
  /* List to Set => Set.from(List) */
  Set familySet = Set.from(family);
  /* Set to List => toList() */
  print(familySet.toList()); // [수지, 민지]
}

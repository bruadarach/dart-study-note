// Map mapping with .map() function and MapEntry()
// Map.map((key, value) => MapEntry(key, value))

void main() {
  // Map
  Map<String, String> family = {
    'Minji': '민지',
    'JY': '정엽',
    'Deoqua': '덕화',
    'Juwon': '주원',
  };

  // MapEntry(key,value)
  final result =
      family.map((key, value) => MapEntry('FAMILY $key', '가족 $value'));
  print(result); // {FAMILY Minji: 가족 민지, FAMILY JY: 가족 정엽, FAMILY Deoqua: 가족 덕화, FAMILY Juwon: 가족 주원}
  
  // Example
  final keys = family.keys; 
  print(keys); // (Minji, JY, Deoqua, Juwon)
  
  final keys2 = family.keys.map((x) => 'LOVELY $x');
  print(keys2); // (LOVELY Minji, LOVELY JY, LOVELY Deoqua, LOVELY Juwon)
  print(keys2.toList()); // [LOVELY Minji, LOVELY JY, LOVELY Deoqua, LOVELY Juwon]
  
  final values = family.values.map((x) => '가족 $x').toList();
  print(values); // [가족 민지, 가족 정엽, 가족 덕화, 가족 주원]
}

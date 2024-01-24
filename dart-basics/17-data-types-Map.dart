// - uppercase - Map
// - add an element
//     - `map[key] = value`
//     - `map.addAll({ key : value })`
// - get a value `map[key]`
// - change a value `map[key] = value`

void main() {
  // Map - key & value
  Map<String, int> dictionary={
    'Lucky': 8,
    'Deoqua': 3,
  };
  print(dictionary); // {Lucky: 8, Deoqua: 3}
  
  // add
  dictionary.addAll({
    'Pin': 5,
    'Bin': 7,
  });
  print(dictionary); // {Lucky: 8, Deoqua: 3, Pin: 5, Bin: 7}
  
  dictionary['Pim'] = 1;
  print(dictionary); // {Lucky: 8, Deoqua: 3, Pin: 5, Bin: 7, Pim: 1}
  
  // get a vlue
  print(dictionary['Lucky']); // 8
  
  // change a key
  dictionary['Lucky'] = 9;
  print(dictionary); // {Lucky: 9, Deoqua: 3, Pin: 5, Bin: 7, Pim: 1}
  
  // remove a key-value
  dictionary.remove('Pim');
  print(dictionary); // {Lucky: 9, Deoqua: 3, Pin: 5, Bin: 7}
  
  // get all keys or values
  print(dictionary.keys); // (Lucky, Deoqua, Pin, Bin)
  print(dictionary.values); // (9, 3, 5, 7)
}
// - Uppercase `List`
// - Generic <> `List<type>`
// - length `.length`
// - Get an element `[0]`
// - Insert an element `.add()`
// - remove an element  `.remove()`
// - get an index `.indexOf()`

void main() {
  // List
  List<String> dogs = ['Lucky', 'Deoqua'];
  print(dogs); // [Lucky, Deoqua]
  
  List<int> numbers = [1,2,3];
  print(numbers); // [1, 2, 3]
  
  // index
  print(dogs[0]); // 'Lucky'
  print(numbers[1]); // 2
  //print(numbers[5]); // Uncaught Error: RangeError (index): Index out of range
  
  // length
  print(dogs.length); // 2
  
  // add
  dogs.add('Pin');
  print(dogs); // [Lucky, Deoqua, Pin]
  
  // remove
  dogs.remove('Pin');
  print(dogs); // [Lucky, Deoqua]
  
  // get an index
  print(dogs.indexOf('Lucky')); // 0
}
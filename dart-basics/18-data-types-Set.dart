// - A collection of unique elements
// - add `.add()`
// - remove `.remove()`
// - contains `.contains()`

void main() {
  // Set - unique elements
  final Set<String> names = {
    'Sujeong',
    'Sujeong',
    'Minji',
    'Javis',
  };
  print(names); // {Sujeong, Minji, Javis}
  
  // add
  names.add('Lucky');
  print(names); // {Sujeong, Minji, Javis, Lucky}
  
  // remove
  names.remove('Lucky');
  print(names); // {Sujeong, Minji, Javis}
  
  // contains
  print(names.contains('Lucky')); // false
}
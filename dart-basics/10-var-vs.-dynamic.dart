// `Var`: Can 'NOT' be reassign to a new TYPE
// `Dynamic`: Can be reassigned to a new TYPE

void main() {
  dynamic nameDynamic = 'Sujeong';
  var nameVar = 'Lucky';
  print(nameDynamic.runtimeType); // String
  print(nameVar.runtimeType); // String

  nameDynamic = 'Sujeong Ji';
  nameVar = "Lucky Deoqua";
  print(nameDynamic); 
  print(nameVar); 
  
  
  nameDynamic = 1;
  nameVar = 2; // ERROR
  print(nameDynamic); 
  print(nameVar);  // ERROR
}
void main() {
  bool result = 12 > 10 && 1 > 0;
  // true && true 
  print(result); // true
  
  bool result2 = 12 > 10 && 1 < 0;
  // true && false 
  print(result2); // false
  
  bool result3 = 12 > 10 || 1 > 0;
  // true ||  true 
  print(result3); // true
  
  bool result4 = 12 > 10 || 1 < 0;
  // true ||  true 
  print(result4); // true
  
  bool result5 = 12 < 10 || 1 < 0;
  // false ||  false 
  print(result5); // false
}
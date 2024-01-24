// for
void main() {
  for (int i = 0; i < 5; i++) {
    print(i);
  }
}
// 0
// 1
// 2
// 3
// 4

void main() {
  int total = 0;
  
  List<int> numbers=[1,2,3,4,5];
    
  for (int i = 0; i < numbers.length; i++) {
    total += numbers[i];
  }
  
  print(total); // 15
}

// for ~ in
void main() {
  
  List<int> numbers = [1,2,3,4,5];
  
  for (int number in numbers) {
    print(number);
  }
}
// 1
// 2
// 3
// 4
// 5

void main() {
  int total = 0;
  
  List<int> numbers = [1,2,3,4,5];
  
  for (int number in numbers) {
    total += number;
  }
  
  print(total); // 15
}

// break - finish the whole loop
void main() {
  int total = 0;
  
  for (int i = 0; i < 10; i++) {
    total += 1;
    
    if (total == 5) break;
  }
  
  print(total); // 5
}

// continue - skip the current loop
void main() {
  
  for (int i = 0; i < 10; i++) {
    if (i == 5) continue;
    print(i);
  }
}
// 0
// 1
// 2
// 3
// 4
// 6
// 7
// 8
// 9
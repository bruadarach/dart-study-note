// while
void main() {
  int total = 0;
  
  while (total < 5) {
    print(total);
    total++;
  }
}
// 0
// 1
// 2
// 3
// 4

void main() {
  int total = 0;
  
  while (total < 10) {
    total += 1;
  }
  
  print(total); // 10
}

// do ~ while
void main() {
  int total = 0;
  
  do {
    total += 1;
  } while (total < 10);
  
  print(total); // 10
}

// break - finish the whole loop
void main() {
  int total = 0;
  
  while (total < 10) {
    total += 1;
    
    if (total == 5) {
      break;
    }
  }
  
  print(total); // 5
}

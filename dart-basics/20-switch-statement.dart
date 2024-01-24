// switch, case, break, default

void main() {
  int number = 3;
  
  switch(number % 3) {
    case 0 :
      print('Reminder 0');
      break;
    case 1 : 
      print('Reminder 1');
      break;
    default : // else
      print('Reminder 1');
      break;
  }
}
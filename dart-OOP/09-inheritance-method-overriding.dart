// 메소드(클래스 내부 함수) 오버라이딩

void main() {
  TimesTwo tt = TimesTwo(2);

  print(tt.calculate()); // 4

  TimesFour tf = TimesFour(2);

  print(tf.calculate()); // 8
}

class TimesTwo {
  final int number;

  TimesTwo(
    this.number,
  );

  // method
  int calculate() {
    return this.number * 2;
  }
}

class TimesFour extends TimesTwo {
  TimesFour(
    int number,
  ) : super(number);
  
  @override // 방법 1
  int calculate() {
    return super.number * 4; // 정석 super.number
    // return this.number * 4 // 괜찮
    // return number * 4 // 무방
  }
  
  @override // 방법 2
  int calculate() {
    return super.calculate() * 2;
  }
}
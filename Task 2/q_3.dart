void main() {
  calculate(10, 5, (a, b) => a + b);

  calculate(10, 5, (a, b) => a - b);

  calculate(10, 5, (a, b) => a * b);
}

void calculate(int num1, int num2,  Function operation) {
  int result = operation(num1, num2);
  print('Result: $result');
}

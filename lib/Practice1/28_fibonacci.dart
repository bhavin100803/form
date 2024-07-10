import 'dart:io';

void main() {
  print("Enter the number of terms for the Fibonacci series: ");
  String input = stdin.readLineSync()!;
  int n = int.parse(input);

  if (n <= 0) {
    print("Please enter a positive integer.");
  } else {
    print("Fibonacci Series with $n terms:");
    for (int i = 0; i < n; i++) {
      print(fibonacci(i));
    }
  }
}

int fibonacci(int n) {
  if (n <= 1) {
    return n;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}
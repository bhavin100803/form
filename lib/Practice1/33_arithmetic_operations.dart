import 'dart:io';

void main() {
  print("Enter two numbers:");
  double? num1 = double.tryParse(stdin.readLineSync()!);
  double? num2 = double.tryParse(stdin.readLineSync()!);

  if (num1 != null && num2 != null) {
    print("Addition: ${num1 + num2}");
    print("Subtraction: ${num1 - num2}");
    print("Multiplication: ${num1 * num2}");
    if (num2 != 0) {
      print("Division: ${num1 / num2}");
    } else {
      print("Division by zero is not possible.");
    }
  } else {
    print("Invalid input. Please enter valid numbers.");
  }
}
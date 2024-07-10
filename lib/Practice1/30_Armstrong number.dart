import 'dart:io';

void main() {
  print("Enter a number: ");
  int num = int.parse(stdin.readLineSync()!);

  int sum = 0;
  int temp = num;

  while (temp > 0) {
    int digit = temp % 10;
    sum = sum + (digit * digit * digit);
    temp ~/= 10;
  }

  if (num == sum) {
    print("$num is an Armstrong number.");
  } else {
    print("$num is not an Armstrong number.");
  }
}
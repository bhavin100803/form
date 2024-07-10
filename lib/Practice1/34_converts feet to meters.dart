import 'dart:io';

void main() {
  print("Enter the length in feet:");
  double? feet = double.tryParse(stdin.readLineSync()!);

  if (feet != null) {
    double meters = feet * 0.3048; // 1 foot is equal to 0.3048 meters
    print("$feet feet is equal to $meters meters.");
  } else {
    print("Invalid input. Please enter a valid number for feet.");
  }
}
import 'dart:io';

void main() {
  print("Enter a decimal number to convert to binary: ");
  int decimalNumber = int.parse(stdin.readLineSync() ?? '0');

  String binaryNumber = convertToBinary(decimalNumber);
  print("Binary representation: $binaryNumber");
}

String convertToBinary(int decimalNumber) {
  return decimalNumber.toRadixString(2);
}
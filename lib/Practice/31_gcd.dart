import 'dart:io';

void main(List<String> args) {
  var numbers = (stdin.readLineSync().toString()).split(' ');
  print(int.parse(numbers[0]).gcd(int.parse(numbers[1])));
}
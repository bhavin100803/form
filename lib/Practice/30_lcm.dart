import 'dart:io';

void main(List<String>args){
  var numbers = (stdin.readLineSync().toString()).split(' ');
  var gcd = int.parse(numbers[0]).gcd(int.parse(numbers[1]));
  print((int.parse(numbers[0])*int.parse(numbers[1]))~/gcd);
}
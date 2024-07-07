import 'dart:io';

void main(){
  stdout.write("Enter your name");
  String name = stdin.readByteSync().toString();

  print("hii $name! What is your age");
  int age = int.parse(stdin.readByteSync().toString());

  int yearsToHundred = 100-age;
  print("$name,you have $yearsToHundred year to be 100");
}
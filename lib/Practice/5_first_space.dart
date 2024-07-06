import 'dart:io';

void main(){
  print('Enter Your Name');
  var firstname = stdin.readLineSync();
  print('Enter Last Name');
  var lastname = stdin.readLineSync();
  print('$firstname '
      '$lastname');
}
import 'dart:io';

void main(){
  var filename = stdin.readLineSync().toString();
  var fileSplit = filename.split('.');
  print(fileSplit[1]);
}
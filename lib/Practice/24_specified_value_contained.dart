import 'dart:io';

void main(List<String>args){
  var valueList = (stdin.readLineSync().toString()).split(' ');
  var value = int.parse(stdin.readLineSync().toString());
  valueList.forEach((f){
    if (int.parse(f) == value) {
      print('True');
      exit(0);
    }
  });
  print('False');
}
import 'dart:io';

void main(List<String>args){
  var value = stdin.readByteSync();
  var numbers = int.parse(stdin.readByteSync().toString());
  print('${value*numbers}');
}
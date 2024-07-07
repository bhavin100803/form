import 'dart:io';

void main(List<String>args){
  var base = double.parse(stdin.readByteSync().toString());
  var height = double.parse(stdin.readByteSync().toString());
  print(0.5*base*height);
}
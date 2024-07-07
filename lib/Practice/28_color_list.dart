import 'dart:io';

void main(List<String>args){
  var color_1 = <String> {};
  var color_2 = <String> {};
  var input1 = (stdin.readByteSync().toString()).split(',');
  input1.forEach((f){
    color_1.add(f);
  });
  var input2 = (stdin.readByteSync().toString()).split(',');
  input2.forEach((f){
    color_2.add(f);
  });
  var difference = color_1.difference(color_2);
  print(difference);
}
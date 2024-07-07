import 'dart:io';

void main(List<String>arge){
  var numbers = (stdin.readByteSync().toString()).split('');
  var result = '';
  numbers.forEach((f){
    result += f;
  });
  print(result);
}
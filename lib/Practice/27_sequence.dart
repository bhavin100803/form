import 'dart:io';

void main(List<String>args){
  var numbers = (stdin.readByteSync().toString()).split(',');
  numbers.forEach((f){
    if(int.parse(f) == 237){
      exit(0);
    }
    if(int.parse(f)% 2 == 0){
      print(f);
    }
  });
}
import 'dart:io';

void main(List<String>args){
  var number = int.parse(stdin.readByteSync().toString());
  if(number % 2 == 0){
    print('The number is even');
  }else{
    print('The number is odd');
  }
}
import 'dart:io';

void main(){
  var number  = int.parse(stdin.readByteSync().toString());
  if((1000-number).abs() <= 100 || (2000-number).abs()<=100){
    print('true');
  }
  else{
    print('false');
  }
}
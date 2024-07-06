import 'dart:io';

void main(){
  var sum = 0;
  dynamic n = stdin.readLineSync().toString();
  var numberList = [n,n*2,n*3];
  for(var x in numberList){
      sum += int.parse(x);
  }
  print(sum);
}
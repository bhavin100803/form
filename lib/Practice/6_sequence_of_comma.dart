import 'dart:io';

void main() {
  var elements = stdin.readLineSync().toString();
  var eleList = elements.split(',');
  print('List: $eleList');
  var eleSet = <String> {};
  for (var x in eleList) {
    eleSet.add(x);
  }
  print('Set: $eleSet');
}
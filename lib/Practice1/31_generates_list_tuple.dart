import 'dart:io';

void main() {
  print("Enter a sequence of comma-separated numbers:");
  String input = stdin.readLineSync() ?? '';

  List<String> numbersList = input.split(',').map((number) => number.trim()).toList();
  var numbersTuple = Tuple.fromList(numbersList);

  print("List : $numbersList");
  print("Tuple : $numbersTuple");
}

class Tuple {
  final List<String> items;

  Tuple(this.items);

  factory Tuple.fromList(List<String> list) {
    return Tuple(List<String>.from(list));
  }

  @override
  String toString() {
    return '(${items.join(', ')})';
  }
}
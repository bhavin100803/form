import 'dart:io';

void main() {
  // Take input from the user
  print("Enter a list of numbers separated by spaces:");
  String input = stdin.readLineSync() ?? "";
  List<String> inputList = input.split(' ');

  List<int> numbers = [];

  for (String item in inputList) {
    try {
      int number = int.parse(item);
      numbers.add(number);
    } catch (e) {
      print("Invalid input: $item is not a valid number.");
    }
  }

  if (numbers.isEmpty) {
    print("No valid numbers entered. Cannot find the minimum value.");
  } else {
    int minValue = findMinimumValue(numbers);
    print("The minimum value in the list is: $minValue");
  }
}

int findMinimumValue(List<int> numbers) {
  int minValue = numbers[0];
  for (int number in numbers) {
    if (number < minValue) {
      minValue = number;
    }
  }
  return minValue;
}
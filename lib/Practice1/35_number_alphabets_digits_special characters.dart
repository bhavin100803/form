import 'dart:io';

void main() {
  print("Enter a string:");
  String? input = stdin.readLineSync();

  if (input != null) {
    Map<String, int> characterCount = countCharacters(input);
    print("Number of alphabets: ${characterCount['alphabets']}");
    print("Number of digits: ${characterCount['digits']}");
    print("Number of special characters: ${characterCount['special']}");
  } else {
    print("No input provided. Please enter a string.");
  }
}

Map<String, int> countCharacters(String input) {
  int alphabets = RegExp(r'[a-zA-Z]').allMatches(input).length;
  int digits = RegExp(r'\d').allMatches(input).length;
  int special = input.length - alphabets - digits;

  return {'alphabets': alphabets, 'digits': digits, 'special': special};
}
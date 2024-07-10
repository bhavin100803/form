import 'dart:io';

void main() {
  print("Enter the year (e.g., 2023): ");
  int year = int.tryParse(stdin.readLineSync()!) ?? DateTime.now().year;

  print("Enter the month (1-12): ");
  int month = int.tryParse(stdin.readLineSync()!) ?? DateTime.now().month;

  final date = DateTime(year, month, 1);
  final lastDay = DateTime(year, month + 1, 0);
  final firstWeekday = date.weekday;

  printCalendar(month, year, firstWeekday, lastDay.day);
}

void printCalendar(int month, int year, int firstWeekday, int lastDay) {
  final monthNames = [
    'January', 'February', 'March', 'April', 'May', 'June',
    'July', 'August', 'September', 'October', 'November', 'December'
  ];

  print('${monthNames[month - 1]} $year');

  print('Su Mo Tu We Th Fr Sa');

  // Print leading spaces for the first week
  for (int i = 0; i < firstWeekday; i++) {
    stdout.write('   ');
  }

  for (int day = 1; day <= lastDay; day++) {
    if (day < 10) {
      stdout.write(' ');
    }
    stdout.write('$day ');

    if ((day + firstWeekday) % 7 == 0 || day == lastDay) {
      print('');
    }
  }
}
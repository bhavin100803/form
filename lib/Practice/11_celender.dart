import 'dart:io';

void main() {
  var month = stdin.readLineSync().toString();
  var year = stdin.readLineSync().toString();
  Process.run('cal', [month, year]).then((ProcessResult results) {
    print(results.stdout);
  });
}


//  Program can not run

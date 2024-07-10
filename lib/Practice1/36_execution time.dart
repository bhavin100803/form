void main() {
  // Call the method and measure its execution time
  measureExecutionTime(myMethod);
}

void myMethod() {
  // Example method that you want to measure the execution time
  for (int i = 0; i < 100000000; i++) {
    // Some computation or task
  }
}

void measureExecutionTime(Function method) {
  var stopwatch = Stopwatch()..start();
  method(); // Call the method
  stopwatch.stop();

  print('Execution time: ${stopwatch.elapsed}');
}
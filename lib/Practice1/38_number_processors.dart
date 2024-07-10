import 'dart:io';

void main() {
  int processors = Platform.numberOfProcessors;
  print('Number of Processors: $processors');
}
import 'dart:io';
import '../lib/grades.dart';

void main() {
  print('Enter student name:');
  String name = stdin.readLineSync() ?? '';

  List<double> scores = [];

  for (int i = 1; i <= 3; i++) {
    print('Enter score $i:');

    double score = double.tryParse(stdin.readLineSync() ?? '') ?? 0;

    scores.add(score);
  }

  double average = computeAverage(scores);

  String remark = remarkFor(average);

  print('\n----- STUDENT RESULT -----');
  print('Name: $name');
  print('Average: ${average.toStringAsFixed(2)}');
  print('Remark: $remark');
}

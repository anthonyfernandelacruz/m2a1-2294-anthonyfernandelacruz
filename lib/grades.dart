double computeAverage(List<double> scores) {
  double total = 0;

  for (double score in scores) {
    total += score;
  }

  return total / scores.length;
}

String remarkFor(double average) {
  if (average >= 90) {
    return "Excellent";
  } else if (average >= 75) {
    return "Passed";
  } else {
    return "Needs improvement";
  }
}

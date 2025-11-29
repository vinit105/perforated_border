// lib/src/utils/math_utils.dart
double clampDouble(double value, double min, double max) {
  if (value < min) return min;
  if (value > max) return max;
  return value;
}

int calculateSegments(double length, double segmentSize) {
  if (segmentSize <= 0) return 0;
  return (length / segmentSize).floor();
}

// lib/src/utils/math_utils.dart

/// Clamps a double [value] between [min] and [max].
///
/// Returns [min] if [value] is less than [min],
/// [max] if [value] is greater than [max],
/// otherwise returns [value].
double clampDouble(double value, double min, double max) {
  if (value < min) return min;
  if (value > max) return max;
  return value;
}

/// Calculates the number of full segments of size [segmentSize] that fit into [length].
///
/// Returns 0 if [segmentSize] is less than or equal to 0.
int calculateSegments(double length, double segmentSize) {
  if (segmentSize <= 0) return 0;
  return (length / segmentSize).floor();
}

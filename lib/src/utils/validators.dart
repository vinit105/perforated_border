// lib/src/utils/validators.dart
import 'package:flutter/material.dart';

/// Validates that a stroke width [value] is positive.
bool isValidStrokeWidth(double value) => value > 0;

/// Validates that the [padding] fits within the given [size].
bool isValidPadding(EdgeInsets padding, Size size) =>
    padding.left + padding.right < size.width &&
    padding.top + padding.bottom < size.height;

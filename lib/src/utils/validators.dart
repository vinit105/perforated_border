// lib/src/utils/validators.dart
import 'package:flutter/material.dart';

bool isValidStrokeWidth(double value) => value > 0;
bool isValidPadding(EdgeInsets padding, Size size) =>
    padding.left + padding.right < size.width &&
        padding.top + padding.bottom < size.height;

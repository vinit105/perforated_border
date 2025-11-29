import 'package:flutter/material.dart';
import 'package:perforated_border/perforated_border.dart';

class BorderSideOptions {
  final BorderSideType borderSideType;
  final double strokeWidth;
  final Color color;
  final PaintingStyle style;

  const BorderSideOptions({
    this.borderSideType = BorderSideType.allSides,
    this.strokeWidth = 1.0,
    this.color = Colors.black,
    this.style = PaintingStyle.stroke,
  });

  // Factory constructor for specific cases
  const BorderSideOptions.only({
    this.strokeWidth = 1.0,
    this.color = Colors.black,
    required this.borderSideType, // specify a single side

    this.style = PaintingStyle.stroke,
  });

  const BorderSideOptions.symmetric({
    this.strokeWidth = 1.0,
    this.color = Colors.black,
    this.borderSideType = BorderSideType.horizontal,
    this.style = PaintingStyle.stroke,
  }) : assert(
      borderSideType == BorderSideType.vertical ||
      borderSideType == BorderSideType.horizontal,
  'BorderSideType must be horizontal or vertical',
  );

  const BorderSideOptions.allSides({
    this.strokeWidth = 1.0,
    this.style = PaintingStyle.stroke,
    this.color = Colors.  black,
  }) : borderSideType = BorderSideType.allSides;
}

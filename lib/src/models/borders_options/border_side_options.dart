import 'package:flutter/material.dart';
import 'package:perforated_border/perforated_border.dart';

/// Defines styling options for borders on a widget.
///
/// This class allows specifying which sides of a border to draw,
/// the stroke width, color, and painting style (stroke or fill).
class BorderSideOptions {
  /// Which sides of the border should be drawn.
  final BorderSideType borderSideType;

  /// Width of the border stroke.
  final double strokeWidth;

  /// Color of the border.
  final Color color;

  /// Painting style, either stroke or fill.
  final PaintingStyle style;

  /// Creates border options for all sides by default.
  const BorderSideOptions({
    this.borderSideType = BorderSideType.allSides,
    this.strokeWidth = 1.0,
    this.color = Colors.black,
    this.style = PaintingStyle.stroke,
  });

  /// Creates border options for a specific side.
  ///
  /// Example:
  /// ```dart
  /// BorderSideOptions.only(borderSideType: BorderSideType.top);
  /// ```
  const BorderSideOptions.only({
    this.strokeWidth = 1.0,
    this.color = Colors.black,
    required this.borderSideType,
    this.style = PaintingStyle.stroke,
  });

  /// Creates border options for symmetric sides (horizontal or vertical).
  ///
  /// Only `BorderSideType.horizontal` or `BorderSideType.vertical` are allowed.
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

  /// Creates border options that apply to all sides.
  const BorderSideOptions.allSides({
    this.strokeWidth = 1.0,
    this.style = PaintingStyle.stroke,
    this.color = Colors.black,
  }) : borderSideType = BorderSideType.allSides;
}

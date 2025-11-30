import 'package:flutter/material.dart';
import 'package:perforated_border/src/models/borders_options/border_side_options.dart';

/// Base class for configuring common options for all perforated border types.
///
/// Provides properties like border sides, color, stripe count, custom paint,
/// and a deprecated stamp flag.
abstract class PerforatedBordersOptions {
  /// Creates an instance of [PerforatedBordersOptions].
  ///
  /// [borderSideOptions] is required to define which sides the border applies to.
  /// [stripeCount] determines the number of stripes or perforations.
  /// [borderColor] sets the default color for the border.
  /// [paint] allows providing a custom [Paint] object.
  /// [stampValue] is deprecated and may be removed in future versions.
  const PerforatedBordersOptions({
    required this.borderSideOptions,
    this.stripeCount = 10,
    this.borderColor = Colors.black,
    this.paint,
    @Deprecated(
      'This property is not used yet and may be removed in future versions.',
    )
    this.stampValue = false,
  });

  /// Specifies which sides of the border to draw.
  final BorderSideOptions borderSideOptions;

  /// Number of stripes or perforations along the border.
  final double stripeCount;

  /// Color of the border.
  final Color borderColor;

  /// Custom paint object to override the default border painting.
  final Paint? paint;

  /// Deprecated: not used yet.
  @Deprecated(
    'This property is not used yet and may be removed in future versions.',
  )
  final bool stampValue;
}

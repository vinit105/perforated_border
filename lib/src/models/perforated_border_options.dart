import 'package:perforated_border/src/models/perforated_options.dart';

/// Options for configuring a perforated-style border.
///
/// Inherits from [PerforatedBordersOptions] and adds parameters
/// specific to the perforated pattern.
class PerforatedBorderOptions extends PerforatedBordersOptions {
  /// Radius of the circular dents in the border.
  final double dentRadius;

  /// Length of the flat line on each side of a dent.
  final double flatWidth;

  /// Creates a [PerforatedBorderOptions] instance.
  ///
  /// [borderSideOptions] is required to specify which sides to apply the border.
  /// [dentRadius] and [flatWidth] define the shape of the perforation.
  const PerforatedBorderOptions({
    super.borderColor,
    super.paint,
    super.stripeCount,
    required super.borderSideOptions,
    super.stampValue,
    required this.dentRadius,
    required this.flatWidth,
  });
}

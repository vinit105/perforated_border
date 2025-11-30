import 'package:perforated_border/src/models/perforated_options.dart';

/// Options for configuring a wavy-style perforated border.
///
/// Inherits from [PerforatedBordersOptions] and allows customization
/// of border color, paint, stripe count, side options, and stamp values.
class WavyBorderOptions extends PerforatedBordersOptions {
  /// Creates a [WavyBorderOptions] instance.
  ///
  /// [borderSideOptions] is required to specify which sides to apply the border.
  const WavyBorderOptions({
    super.borderColor,
    super.paint,
    super.stripeCount,
    required super.borderSideOptions,
    super.stampValue,
  });
}

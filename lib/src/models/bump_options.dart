import 'package:perforated_border/src/models/perforated_options.dart';

/// Options for configuring a bumper-style perforated border.
///
/// Inherits from [PerforatedBordersOptions] and allows customization
/// of border color, paint, stripe count, side options, and stamp values.
class BumperBorderOptions extends PerforatedBordersOptions {
  /// Creates a [BumperBorderOptions] instance.
  ///
  /// [borderSideOptions] is required to specify which sides to apply the border.
  const BumperBorderOptions({
    super.borderColor,
    super.paint,
    super.stripeCount,
    required super.borderSideOptions,
    super.stampValue,
  });
}

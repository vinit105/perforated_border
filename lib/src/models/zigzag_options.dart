import 'package:perforated_border/src/models/perforated_options.dart';

/// Options for configuring a zigzag-style perforated border.
///
/// Inherits from [PerforatedBordersOptions] and allows customization
/// of border color, paint, stripe count, side options, and stamp values.
class ZigzagBorderOptions extends PerforatedBordersOptions {
  /// Creates a [ZigzagBorderOptions] instance.
  ///
  /// [borderSideOptions] is required to specify which sides to apply the border.
  /// Other parameters are optional.
  const ZigzagBorderOptions({
    required super.borderSideOptions,
    super.stripeCount,
    super.borderColor,
    super.paint,
    super.stampValue,
  });
}

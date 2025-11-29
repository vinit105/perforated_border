import 'package:perforated_border/src/models/perforated_options.dart';

class PerforatedBorderOptions extends PerforatedBordersOptions {
  final double dentRadius;  // how big the circle is
  final double flatWidth;   // flat line length on each side



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

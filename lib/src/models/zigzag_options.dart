
import 'package:perforated_border/src/models/perforated_options.dart';

class ZigzagBorderOptions extends PerforatedBordersOptions {
  const ZigzagBorderOptions({
    required super.borderSideOptions, // required parameter for the border side options
    super.stripeCount, // default stripe count
    super.borderColor,
    super.paint,
    super.stampValue
  });
}

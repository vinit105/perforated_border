import 'package:perforated_border/src/models/perforated_options.dart';

class BumperBorderOptions extends PerforatedBordersOptions {


  const BumperBorderOptions({
    super.borderColor,
    super.paint,
    super.stripeCount,
    required super.borderSideOptions,
    super.stampValue
  });
}

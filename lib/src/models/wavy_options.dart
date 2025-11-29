import 'package:perforated_border/src/models/perforated_options.dart';

class WavyBorderOptions extends PerforatedBordersOptions {


  const WavyBorderOptions({
     super.borderColor,
    super.paint,
    super.stripeCount,
    required super.borderSideOptions,
    super.stampValue,
  });
}

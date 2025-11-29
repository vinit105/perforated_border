import 'package:flutter/material.dart';
import 'package:perforated_border/src/models/borders_options/border_side_options.dart';



abstract class PerforatedBordersOptions {

  const PerforatedBordersOptions({
    required this.borderSideOptions,
    this.stripeCount = 10,
    this.borderColor =Colors.black,
    this.paint,
    this.stampValue = false,
  });

  final BorderSideOptions borderSideOptions;
  final double stripeCount;
  final Color borderColor;
  final Paint? paint;
  final bool stampValue;
}

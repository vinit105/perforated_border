import 'package:flutter/material.dart';
import 'package:perforated_border/perforated_border.dart';
import 'package:perforated_border/src/painters/bumper_border_painter.dart';
import 'package:perforated_border/src/painters/perforated_border_painter.dart';
import 'package:perforated_border/src/painters/wavy_border_painter.dart';
import 'package:perforated_border/src/painters/zigzag_border_painter.dart';

class PerforatedBorder extends StatelessWidget {
  final Widget child;
  final PerforatedBordersOptions options;

  const PerforatedBorder({
    super.key,
    required this.child,
    required this.options,
  });

  @override
  Widget build(BuildContext context) {
    final painter = switch (options) {
      ZigzagBorderOptions o => ZigzagBorderPainter(options: o),
      WavyBorderOptions o => WavyBorderPainter(options: o),
      BumperBorderOptions o => BumperBorderPainter(options: o),
      PerforatedBorderOptions o => PerforatedBorderPainter(options: o),
      _ => throw UnsupportedError("Unknown border type"),
    };

    return CustomPaint(painter: painter, child: child);
  }
}

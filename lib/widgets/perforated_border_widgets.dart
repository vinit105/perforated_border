import 'package:flutter/material.dart';
import 'package:perforated_border/perforated_border.dart';
import 'package:perforated_border/src/painters/bumper_border_painter.dart';
import 'package:perforated_border/src/painters/perforated_border_painter.dart';
import 'package:perforated_border/src/painters/wavy_border_painter.dart';
import 'package:perforated_border/src/painters/zigzag_border_painter.dart';

/// A widget that draws a perforated border around its [child].
///
/// The style of the border is determined by the [options] provided.
/// Supported border types include zigzag, wavy, perforated, and bumper.
class PerforatedBorder extends StatelessWidget {
  /// The child widget to which the border is applied.
  final Widget child;

  /// Options for customizing the border style.
  final PerforatedBordersOptions options;

  /// Creates a [PerforatedBorder] widget.
  ///
  /// [child] is required and wrapped by a [CustomPaint] to draw the border.
  /// [options] defines the border type and appearance.
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


import 'dart:ui';
import 'package:flutter/cupertino.dart' show CustomPainter;
import 'package:perforated_border/perforated_border.dart';


class WavyBorderPainter extends CustomPainter {
  final WavyBorderOptions options;

  WavyBorderPainter({required this.options}) : super();

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  @override
  void paint(Canvas canvas, Size size) {
    bool drawTop =
        options.borderSideOptions.borderSideType == BorderSideType.top ||
            options.borderSideOptions.borderSideType == BorderSideType.allSides ||
            options.borderSideOptions.borderSideType == BorderSideType.vertical;

    bool drawBottom =
        options.borderSideOptions.borderSideType == BorderSideType.bottom ||
            options.borderSideOptions.borderSideType == BorderSideType.allSides ||
            options.borderSideOptions.borderSideType == BorderSideType.vertical;

    bool drawLeft =
        options.borderSideOptions.borderSideType == BorderSideType.left ||
            options.borderSideOptions.borderSideType == BorderSideType.allSides ||
            options.borderSideOptions.borderSideType == BorderSideType.horizontal;

    bool drawRight =
        options.borderSideOptions.borderSideType == BorderSideType.right ||
            options.borderSideOptions.borderSideType == BorderSideType.allSides ||
            options.borderSideOptions.borderSideType == BorderSideType.horizontal;
    final path = Path();
    double step = options.stripeCount;
    final paint =
        options.paint ??
            (Paint()
              ..strokeWidth = options.borderSideOptions.strokeWidth
              ..style = options.borderSideOptions.style);


    ///
    if (drawTop) {
      final double waveWidth = options.stripeCount;
      final double r = options.stripeCount;
      final double amplitude = r * 0.8; // how tall the wave is
      path.moveTo(0, 0);
      for (double x = 0; x < size.width; x += waveWidth) {
        // Upward arc
        path.arcToPoint(
          Offset(x + waveWidth / 2, -amplitude),
          radius: Radius.circular(r),
          clockwise: false,
        );

        // Downward arc (returns to baseline)
        path.arcToPoint(
          Offset(x + waveWidth, 0),
          radius: Radius.circular(r),
          clockwise: true,
        );
      }
    }
    else {

      for (double x = 0; x < size.width; x += step) {
        if (x == size.width + step) {
          path.lineTo(x - step, size.height);
          continue;
        }
      }
    }

    // Right Zigzag
    if (drawRight) {
      final double waveHeight = options.stripeCount;
      final double r = options.stripeCount;
      final double amp = r * 0.8;
      path.lineTo(size.width, 0);
      for (double y = 0; y < size.height; y += waveHeight) {
        path.arcToPoint(
          Offset(size.width + amp, y + waveHeight / 2),
          radius: Radius.circular(r),
          clockwise: false,
        );
        path.arcToPoint(
          Offset(size.width, y + waveHeight),
          radius: Radius.circular(r),
          clockwise: true,
        );
      }
    }
    else {
      for (double y = 0 - step; y < size.height; y += step) {
        if (y == 0 - step) {
          path.lineTo(size.width, y + step);
          continue;
        }
      }
    }

    // Bottom Zigzag
    if (drawBottom) {
      final double waveWidth = options.stripeCount;
      final double r = options.stripeCount;
      final double amp = r * 0.8;
      path.lineTo(size.width, size.height);
      for (double x = size.width; x > 0; x -= waveWidth) {
        path.arcToPoint(
          Offset(x - waveWidth / 2, size.height + amp),
          radius: Radius.circular(r),
          clockwise: false,
        );
        path.arcToPoint(
          Offset(x - waveWidth, size.height),
          radius: Radius.circular(r),
          clockwise: true,
        );
      }
    }
    else {
      for (double x = size.width + step; x > 0; x -= step) {
        if (x == size.width + step) {
          path.lineTo(x - step, size.height);
          continue;
        }
      }
    }

    // Left Zigzag
    if (drawLeft) {
      final double waveHeight = options.stripeCount;
      final double r = options.stripeCount;
      final double amp = r * 0.8;
      path.lineTo(0, size.height);
      for (double y = size.height; y > 0; y -= waveHeight) {
        path.arcToPoint(
          Offset(-amp, y - waveHeight / 2),
          radius: Radius.circular(r),
          clockwise: false,
        );
        path.arcToPoint(
          Offset(0, y - waveHeight),
          radius: Radius.circular(r),
          clockwise: true,
        );
      }
    }
    else {
      for (double y = size.height + step; y > 0; y -= step) {
        if (y == size.height + step) {
          path.lineTo(0, y - step);
          continue;
        }
      }
    }

    path.close();
    canvas.drawPath(path, paint);
  }
}


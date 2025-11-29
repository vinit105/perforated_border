import 'dart:ui';
import 'package:flutter/cupertino.dart' show CustomPainter;
import 'package:perforated_border/perforated_border.dart';

class BumperBorderPainter extends CustomPainter {
  final BumperBorderOptions options;

  BumperBorderPainter({required this.options}) : super();

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
    // print(size.width);
    double step = options.stripeCount;
    // if (options.stampValue) {
    //   double maxSteps = (size.width / options.stripeCount) > 10
    //       ? (size.width / (options.stripeCount) * (1.25)).floorToDouble()
    //       : size.width / options.stripeCount*0.8;
    //   print(options.stripeCount);
    //   print(maxSteps);
    //   step = options.stripeCount.clamp(0, maxSteps);
    //   print(step);
    // }

    // double step = options.stripeCount;
    final paint =
        options.paint ??
        (Paint()
          ..strokeWidth = options.borderSideOptions.strokeWidth
          ..style = options.borderSideOptions.style);

    ///
    if (drawTop) {
      final double w = step;
      final double amp = step * 0.8;
      path.moveTo(0, 0);
      double startX = 0;
      double endX = size.width;

      for (double x = startX; x < endX; x += w) {
        path.quadraticBezierTo(x + w / 2, -amp, x + w, 0);
      }
    } else {

      for (double x = 0; x < size.width; x += step) {
        if (x == size.width + step) {
          path.lineTo(x - step, size.height);
          continue;
        }
      }
    }

    // Right Zigzag
    if (drawRight) {
      final double h = step;
      final double amp = step * 0.8;
      path.lineTo(size.width, 0);
      for (double y = 0; y < size.height; y += h) {
        path.quadraticBezierTo(size.width + amp, y + h / 2, size.width, y + h);
      }
    } else {
      for (double y = 0 - step; y <= size.height; y += step) {
        if (y == 0 - step) {
          path.lineTo(size.width, y + step);
          continue;
        }
      }
    }

    // Bottom Zigzag
    if (drawBottom) {
      final double w = step;
      final double amp = step * 0.8;
      path.lineTo(size.width, size.height);
      for (double x = size.width; x > 0; x -= w) {
        path.quadraticBezierTo(
          x - w / 2,
          size.height + amp,
          x - w,
          size.height,
        );
      }
    } else {
      for (double x = size.width + step; x > 0; x -= step) {
        if (x == size.width + step) {
          path.lineTo(x - step, size.height);
          continue;
        }
      }
    }

    // Left Zigzag
    if (drawLeft) {
      final double h = step;
      final double amp = step * 0.8;
      path.lineTo(0, size.height);
      for (double y = size.height; y > 0; y -= h) {
        path.quadraticBezierTo(-amp, y - h / 2, 0, y - h);
      }
    } else {
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

import 'dart:ui';
import 'package:flutter/cupertino.dart' show CustomPainter;
import 'package:perforated_border/perforated_border.dart';

class PerforatedBorderPainter extends CustomPainter {
  final PerforatedBorderOptions options;

  PerforatedBorderPainter({required this.options}) : super();

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
          ..color = options.borderColor
          ..style = options.borderSideOptions.style);

    ///
    if (drawTop) {
      final double r = options.dentRadius;
      final double flat = options.flatWidth;
      path.moveTo(0, 0);
      // 1 dent cycle = flat + circle + flat
      final double cycle = flat + (2 * r) + flat;

      final double startX = 0;
      final double endX = size.width;

      path.moveTo(startX, 0);

      for (double x = startX; x < endX; x += cycle) {
        final double arcStart = x + flat;
        final double arcEnd = arcStart + (2 * r);
        final double nextFlat = arcEnd + flat;

        // draw flat before arc
        path.lineTo(arcStart, 0);

        // draw the dent circle (inward)
        path.arcToPoint(
          Offset(arcEnd, 0),
          radius: Radius.circular(r),
          clockwise: false,
        );

        // flat after arc
        path.lineTo(nextFlat, 0);
      }

      // close the remaining small gap if any
      path.lineTo(endX, 0);
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
      final double r = options.dentRadius;
      final double flat = options.flatWidth;

      // Full dent cycle vertically
      final double cycle = flat + (2 * r) + flat * 0.8;

      final double startY = flat;
      final double endY = size.height;
      path.lineTo(size.width, 0);
      // We assume path is ALREADY at (size.width, 0)
      // NO moveTo here

      for (double y = startY; y < endY - step / 2; y += cycle) {
        final double arcStart = y + flat;
        final double arcEnd = arcStart + (2 * r);
        final double nextFlat = arcEnd + flat;

        // flat before arc
        path.lineTo(size.width, arcStart);

        // dent circle inward (toward LEFT)
        path.arcToPoint(
          Offset(size.width, arcEnd),
          radius: Radius.circular(r),
          clockwise: false, // concave inward (to left)
        );

        // flat after arc
        path.lineTo(size.width, nextFlat);
      }

      // close any remaining vertical gap
      path.lineTo(size.width, endY);
    } else {
      for (double y = 0 - step; y < size.height; y += step) {
        if (y == 0 - step) {
          path.lineTo(size.width, y + step);
          continue;
        }
      }
    }

    // Bottom Zigzag
    if (drawBottom) {
      final double r = options.dentRadius;
      final double flat = options.flatWidth;

      // full dent cycle horizontally
      final double cycle = flat + (2 * r) + flat;

      final double startX = size.width;
      final double endX = 0;

      // NO moveTo — path must already be at (size.width, size.height)
      path.lineTo(size.width, size.height);
      for (double x = startX - step / 1.4; x > endX + step; x -= cycle) {
        final double arcStart = x - flat;
        final double arcEnd = arcStart - (2 * r);
        final double nextFlat = arcEnd - flat;

        // flat before arc
        path.lineTo(arcStart, size.height);

        // dent circle inward (toward UP)
        path.arcToPoint(
          Offset(arcEnd, size.height),
          radius: Radius.circular(r),
          clockwise: false, // concave UP
        );

        // flat after arc
        path.lineTo(nextFlat, size.height);
      }

      // close small leftover gap
      path.lineTo(endX, size.height);
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
      final double r = options.dentRadius;
      final double flat = options.flatWidth;

      // full dent cycle vertically
      final double cycle = flat + (2 * r) + flat * 0.7;

      final double startY = size.height;
      final double endY = 0;
      path.lineTo(0, size.height);

      for (
        double y = startY - step / 1.2 + (step * 0.7);
        y >= endY + step;
        y -= cycle
      ) {
        final double arcStart = y - flat;
        final double arcEnd = arcStart - (2 * r);
        final double nextFlat = arcEnd - flat;

        // flat before arc
        path.lineTo(0, arcStart);

        // dent circle inward (toward RIGHT)
        path.arcToPoint(
          Offset(0, arcEnd),
          radius: Radius.circular(r),
          clockwise: false, // concave RIGHT
        );

        // flat after arc
        path.lineTo(0, nextFlat);
      }

      // close gap
      path.lineTo(0, endY);
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

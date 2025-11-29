import 'dart:ui';
import 'package:flutter/cupertino.dart' show CustomPainter;
import 'package:perforated_border/src/enums/border_type.dart';
import 'package:perforated_border/src/models/zigzag_options.dart';

class ZigzagBorderPainter extends CustomPainter {
  final ZigzagBorderOptions options;

  ZigzagBorderPainter({required this.options}) : super();
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
    double step = (options.stripeCount%2==0)?options.stripeCount:options.stripeCount+1;
    final paint =
        options.paint ??
        (Paint()
          ..strokeWidth = options.borderSideOptions.strokeWidth
          ..color = options.borderColor
          ..style = options.borderSideOptions.style);

    ///
    if (drawTop) {

      path.moveTo(0, 0);
      for (double x = 0; x < size.width; x += step) {
        path.lineTo(x + step / 2, step); // Move down
        path.lineTo(x + step, 0); // Move  up
      }
    } else {
      // print('inside else top ');

      for (double x = 0; x < size.width; x += step) {
        if (x == size.width + step) {
          path.lineTo(x - step, size.height);
          continue;
        }
      }
    }

    // Right Zigzag
    if (drawRight) {
      path.lineTo(size.width, 0);
      for (double y = 0 - step; y < size.height; y += step) {
        if (y == 0 - step) {
          path.lineTo(size.width, y + step);
          continue;
        }
        path.lineTo(size.width - step, y + step / 2); // Move left
        path.lineTo(size.width, y + step); // Move right
      }
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
      path.lineTo(size.width, size.height);
      for (double x = size.width + step; x > 0; x -= step) {
        if (x == size.width + step) {
          path.lineTo(x - step, size.height);
          continue;
        }
        path.lineTo(x - step / 2, size.height - step); // Move up
        path.lineTo(x - step, size.height); // Move down
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
      path.lineTo(0, size.height);
      for (double y = size.height + step; y > 0; y -= step) {
        if (y == size.height + step) {
          path.lineTo(0, y - step);
          continue;
        }
        path.lineTo(step, y - step / 2); // Move right
        path.lineTo(0, y - step); // Move left
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

  /*
  *   *     ///
    if (drawTop) {
      // print('inside top ');
      path.moveTo(0, 0);
      path.lineTo(step, step);
      for (double x = step / 2; x <= size.width - step; x += step) {
        print(x);
        print(step);
        print(size.width);
        path.lineTo(x + step / 2, step); // Move down
        if (x > size.width - (2 * step)) {
          print('if');
          path.lineTo(x + (1.5 * step), 0); // Move up
        } else {
          print('els');

          path.lineTo(x + step, 0); // Move up
        }
        //           if(x ==size.width - (2.5*step)){
        //             print("object");
        //             path.lineTo(size.width-step, 0);
        // break;
        //           }
      }
      // Move up
    } else {


      for (double x = 0; x < size.width; x += step) {
        if (x == size.width + step) {
          path.lineTo(x - step, size.height);
          continue;
        }
      }
    }*/
}

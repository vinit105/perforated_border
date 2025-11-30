import 'package:flutter/material.dart';
import 'package:perforated_border/perforated_border.dart';

/// Model to hold a single demo row
class ZigZagDemoRow {
  final String title;
  final String description;
  final ZigzagBorderOptions options;

  ZigZagDemoRow({
    required this.title,
    required this.description,
    required this.options,
  });
}

/// Reusable widget for one ZigZag border row
class ZigZagDemoRowWidget extends StatelessWidget {
  final ZigZagDemoRow row;

  const ZigZagDemoRowWidget({super.key, required this.row});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            PerforatedBorder(
              options: row.options,
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Center(child: FlutterLogo(size: 60)),
              ),
            ),
            const SizedBox(width: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  row.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(row.description),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Main demo widget
class ZigZagBordersDemoWidget extends StatelessWidget {
  const ZigZagBordersDemoWidget({super.key});

  /// Static list of demo rows
  List<ZigZagDemoRow> get demoRows => [
        ZigZagDemoRow(
          title: 'ZigZag Border Fill',
          description:
              'Height & width: 100, padding:20, Filled\nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: ZigzagBorderOptions(
            paint: Paint()
              ..strokeWidth = 2
              ..color = Colors.blueAccent
              ..style = PaintingStyle.fill,
            stripeCount: 20,
            stampValue: false,
            borderSideOptions: const BorderSideOptions.allSides(
              // color: Colors.green,
              style: PaintingStyle.fill,
            ),
            // borderColor: Colors.red,
          ),
        ),
        ZigZagDemoRow(
          title: 'ZigZag Border Stroke',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const ZigzagBorderOptions(
            // paint: Paint()
            //   ..strokeWidth = 2
            //   ..color = Colors.blueAccent
            //   ..style = PaintingStyle.stroke,
            stripeCount: 20,
            stampValue: false,
            borderSideOptions: BorderSideOptions.allSides(
              // color: Colors.green,
              style: PaintingStyle.stroke,
            ),
            borderColor: Colors.red,
          ),
        ),
        ZigZagDemoRow(
          title: 'ZigZag Border H-Symmetric Filled',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const ZigzagBorderOptions(
            // paint: Paint()
            //   ..strokeWidth = 2
            //   ..color = Colors.blueAccent
            //   ..style = PaintingStyle.stroke,
            stripeCount: 20,
            stampValue: false,
            borderSideOptions: BorderSideOptions.symmetric(
              borderSideType: BorderSideType.horizontal,
              // color: Colors.green,
              style: PaintingStyle.fill,
            ),
            borderColor: Colors.orangeAccent,
          ),
        ),
        ZigZagDemoRow(
          title: 'ZigZag Border V-Symmetric Stroke',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const ZigzagBorderOptions(
            // paint: Paint()
            //   ..strokeWidth = 2
            //   ..color = Colors.blueAccent
            //   ..style = PaintingStyle.stroke,
            stripeCount: 20,
            stampValue: false,
            borderSideOptions: BorderSideOptions.symmetric(
              borderSideType: BorderSideType.vertical,
              // color: Colors.green,
              style: PaintingStyle.stroke,
            ),
            borderColor: Colors.deepPurpleAccent,
          ),
        ),
        ZigZagDemoRow(
          title: 'ZigZag Border H-Symmetric Stroke',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const ZigzagBorderOptions(
            // paint: Paint()
            //   ..strokeWidth = 2
            //   ..color = Colors.blueAccent
            //   ..style = PaintingStyle.stroke,
            stripeCount: 20,
            stampValue: false,
            borderSideOptions: BorderSideOptions.symmetric(
              borderSideType: BorderSideType.horizontal,
              // color: Colors.green,
              style: PaintingStyle.stroke,
            ),
            borderColor: Colors.orangeAccent,
          ),
        ),
        ZigZagDemoRow(
          title: 'ZigZag Border V-Symmetric filled',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const ZigzagBorderOptions(
            // paint: Paint()
            //   ..strokeWidth = 2
            //   ..color = Colors.blueAccent
            //   ..style = PaintingStyle.stroke,
            stripeCount: 20,
            stampValue: false,
            borderSideOptions: BorderSideOptions.symmetric(
              borderSideType: BorderSideType.vertical,
              // color: Colors.green,
              style: PaintingStyle.fill,
            ),
            borderColor: Colors.deepPurpleAccent,
          ),
        ),
        ZigZagDemoRow(
          title: 'ZigZag Border Left Filled',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const ZigzagBorderOptions(
            // paint: Paint()
            //   ..strokeWidth = 2
            //   ..color = Colors.blueAccent
            //   ..style = PaintingStyle.stroke,
            stripeCount: 20,
            stampValue: false,
            borderSideOptions: BorderSideOptions.only(
              borderSideType: BorderSideType.left,
              // color: Colors.green,
              style: PaintingStyle.fill,
            ),
            borderColor: Colors.red,
          ),
        ),
        ZigZagDemoRow(
          title: 'ZigZag Border Left Stroke',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const ZigzagBorderOptions(
            // paint: Paint()
            //   ..strokeWidth = 2
            //   ..color = Colors.blueAccent
            //   ..style = PaintingStyle.stroke,
            stripeCount: 20,
            stampValue: false,
            borderSideOptions: BorderSideOptions.only(
              borderSideType: BorderSideType.left,
              // color: Colors.green,
              style: PaintingStyle.stroke,
            ),
            borderColor: Colors.red,
          ),
        ),
        ZigZagDemoRow(
          title: 'ZigZag Border Top Filled',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const ZigzagBorderOptions(
            // paint: Paint()
            //   ..strokeWidth = 2
            //   ..color = Colors.blueAccent
            //   ..style = PaintingStyle.stroke,
            stripeCount: 20,
            stampValue: false,
            borderSideOptions: BorderSideOptions.only(
              borderSideType: BorderSideType.top,
              // color: Colors.green,
              style: PaintingStyle.fill,
            ),
            borderColor: Colors.pink,
          ),
        ),
        ZigZagDemoRow(
          title: 'ZigZag Border Top Stroke',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const ZigzagBorderOptions(
            // paint: Paint()
            //   ..strokeWidth = 2
            //   ..color = Colors.blueAccent
            //   ..style = PaintingStyle.stroke,
            stripeCount: 20,
            stampValue: false,
            borderSideOptions: BorderSideOptions.only(
              borderSideType: BorderSideType.top,
              // color: Colors.green,
              style: PaintingStyle.stroke,
            ),
            borderColor: Colors.pink,
          ),
        ),
        ZigZagDemoRow(
          title: 'ZigZag Border Right Filled',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const ZigzagBorderOptions(
            // paint: Paint()
            //   ..strokeWidth = 2
            //   ..color = Colors.blueAccent
            //   ..style = PaintingStyle.stroke,
            stripeCount: 20,
            stampValue: false,
            borderSideOptions: BorderSideOptions.only(
              borderSideType: BorderSideType.right,
              // color: Colors.green,
              style: PaintingStyle.fill,
            ),
            borderColor: Colors.black,
          ),
        ),
        ZigZagDemoRow(
          title: 'ZigZag Border Right Stroke',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const ZigzagBorderOptions(
            // paint: Paint()
            //   ..strokeWidth = 2
            //   ..color = Colors.blueAccent
            //   ..style = PaintingStyle.stroke,
            stripeCount: 20,
            stampValue: false,
            borderSideOptions: BorderSideOptions.only(
              borderSideType: BorderSideType.right,
              // color: Colors.green,
              style: PaintingStyle.stroke,
            ),
            borderColor: Colors.black,
          ),
        ),
        ZigZagDemoRow(
          title: 'ZigZag Border Bottom Filled',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const ZigzagBorderOptions(
            // paint: Paint()
            //   ..strokeWidth = 2
            //   ..color = Colors.blueAccent
            //   ..style = PaintingStyle.stroke,
            stripeCount: 20,
            stampValue: false,
            borderSideOptions: BorderSideOptions.only(
              borderSideType: BorderSideType.bottom,
              // color: Colors.green,
              style: PaintingStyle.fill,
            ),
            borderColor: Colors.greenAccent,
          ),
        ),
        ZigZagDemoRow(
          title: 'ZigZag Border Bottom Stroke',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const ZigzagBorderOptions(
            // paint: Paint()
            //   ..strokeWidth = 2
            //   ..color = Colors.blueAccent
            //   ..style = PaintingStyle.stroke,
            stripeCount: 20,
            stampValue: false,
            borderSideOptions: BorderSideOptions.only(
              borderSideType: BorderSideType.bottom,
              // color: Colors.green,
              style: PaintingStyle.stroke,
            ),
            borderColor: Colors.greenAccent,
          ),
        ),

        // Add more rows here...
      ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: demoRows.map((row) => ZigZagDemoRowWidget(row: row)).toList(),
      ),
    );
  }
}

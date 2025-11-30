import 'package:flutter/material.dart';
import 'package:perforated_border/perforated_border.dart';

/// Model to hold a single demo row
class BumpDemoRow {
  final String title;
  final String description;
  final BumperBorderOptions options;

  BumpDemoRow({
    required this.title,
    required this.description,
    required this.options,
  });
}

/// Reusable widget for one Bump border row
class BumpDemoRowWidget extends StatelessWidget {
  final BumpDemoRow row;

  const BumpDemoRowWidget({super.key, required this.row});

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
class BumpBordersDemoWidget extends StatelessWidget {
  const BumpBordersDemoWidget({super.key});

  /// Static list of demo rows
  List<BumpDemoRow> get demoRows => [
        BumpDemoRow(
          title: 'Bump Border Fill',
          description:
              'Height & width: 100, padding:20, Filled\nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: BumperBorderOptions(
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
        BumpDemoRow(
          title: 'Bump Border Stroke',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const BumperBorderOptions(
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
        BumpDemoRow(
          title: 'Bump Border H-Symmetric Filled',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const BumperBorderOptions(
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
        BumpDemoRow(
          title: 'Bump Border V-Symmetric Stroke',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const BumperBorderOptions(
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
        BumpDemoRow(
          title: 'Bump Border H-Symmetric Stroke',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const BumperBorderOptions(
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
        BumpDemoRow(
          title: 'Bump Border V-Symmetric filled',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const BumperBorderOptions(
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
        BumpDemoRow(
          title: 'Bump Border Left Filled',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const BumperBorderOptions(
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
        BumpDemoRow(
          title: 'Bump Border Left Stroke',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const BumperBorderOptions(
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
        BumpDemoRow(
          title: 'Bump Border Top Filled',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const BumperBorderOptions(
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
        BumpDemoRow(
          title: 'Bump Border Top Stroke',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const BumperBorderOptions(
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
        BumpDemoRow(
          title: 'Bump Border Right Filled',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const BumperBorderOptions(
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
        BumpDemoRow(
          title: 'Bump Border Right Stroke',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const BumperBorderOptions(
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
        BumpDemoRow(
          title: 'Bump Border Bottom Filled',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const BumperBorderOptions(
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
        BumpDemoRow(
          title: 'Bump Border Bottom Stroke',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const BumperBorderOptions(
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
        children: demoRows.map((row) => BumpDemoRowWidget(row: row)).toList(),
      ),
    );
  }
}

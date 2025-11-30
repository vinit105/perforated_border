import 'package:flutter/material.dart';
import 'package:perforated_border/perforated_border.dart';

/// Model to hold a single demo row
class WavyDemoRow {
  final String title;
  final String description;
  final WavyBorderOptions options;

  WavyDemoRow({
    required this.title,
    required this.description,
    required this.options,
  });
}

/// Reusable widget for one Wavy Border row
class WavyDemoRowWidget extends StatelessWidget {
  final WavyDemoRow row;

  const WavyDemoRowWidget({super.key, required this.row});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
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
class WavyBordersDemoWidget extends StatelessWidget {
  const WavyBordersDemoWidget({super.key});

  /// Static list of demo rows
  List<WavyDemoRow> get demoRows => [
        WavyDemoRow(
          title: 'Wavy Border Fill',
          description:
              'Height & width: 100, padding:20, Filled\nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: WavyBorderOptions(
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
        WavyDemoRow(
          title: 'Wavy Border Stroke',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const WavyBorderOptions(
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
        WavyDemoRow(
          title: 'Wavy Border H-Symmetric Filled',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const WavyBorderOptions(
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
        WavyDemoRow(
          title: 'Wavy Border V-Symmetric Stroke',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const WavyBorderOptions(
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
        WavyDemoRow(
          title: 'Wavy Border H-Symmetric Stroke',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const WavyBorderOptions(
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
        WavyDemoRow(
          title: 'Wavy Border V-Symmetric filled',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const WavyBorderOptions(
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
        WavyDemoRow(
          title: 'Wavy Border Left Filled',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const WavyBorderOptions(
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
        WavyDemoRow(
          title: 'Wavy Border Left Stroke',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const WavyBorderOptions(
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
        WavyDemoRow(
          title: 'Wavy Border Top Filled',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const WavyBorderOptions(
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
        WavyDemoRow(
          title: 'Wavy Border Top Stroke',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const WavyBorderOptions(
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
        WavyDemoRow(
          title: 'Wavy Border Right Filled',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const WavyBorderOptions(
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
        WavyDemoRow(
          title: 'Wavy Border Right Stroke',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const WavyBorderOptions(
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
        WavyDemoRow(
          title: 'Wavy Border Bottom Filled',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const WavyBorderOptions(
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
        WavyDemoRow(
          title: 'Wavy Border Bottom Stroke',
          description:
              'Height & width: 100, padding:20, \nStripe count: 15, dent radius: 6, flatWidth: 4',
          options: const WavyBorderOptions(
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
        children: demoRows.map((row) => WavyDemoRowWidget(row: row)).toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:perforated_border/perforated_border.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Builder(
            builder:(context) =>  Container(
              color: Colors.grey.shade200,
              child: PerforatedBorder(
                options: ZigzagBorderOptions(
                  // dentRadius: 6,
                  // flatWidth: 3,
                  paint: Paint()..strokeWidth= 1..color = Colors.blueAccent..style=PaintingStyle.fill,

                  stripeCount: 250,
                  stampValue: false,
                  borderSideOptions: const BorderSideOptions.allSides(color: Colors.green,style: PaintingStyle.fill ),
                  // borderSideOptions: BorderSideOptions.only(borderSideType:BorderSideType.top,color: Colors.green,style: PaintingStyle.fill ),
                  borderColor: Colors.red
                  // borderSideType: BorderSideType.allSides,
                  // waveSize: 100,
                ),
                child: Container(
                  padding: const EdgeInsets.all(40),
                  // color: Colors.yellowAccent,
                  child: const FlutterLogo(size: 100),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

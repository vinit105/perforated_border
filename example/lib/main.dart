import 'package:example/demo_borders/bump_border_widget.dart';
import 'package:example/demo_borders/perforated_borders.dart';
import 'package:example/demo_borders/wavy_border_widget.dart';
import 'package:example/demo_borders/zigzag_border_widget.dart';
import 'package:example/demo_usecases/demo_usecases_widget.dart';
import 'package:example/demo_web_borders/borders_demo.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());
GlobalKey<NavigatorState> _key = GlobalKey();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _key,
      home: Scaffold(
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                PerforatedBordersDemoWidget(),
                WavyBordersDemoWidget(),
                ZigZagBordersDemoWidget(),
                BumpBordersDemoWidget(),
                const Text('Demo UseCases',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                DemoUseCasesWidget(),
              ],
            ),
          ),
        ),
        floatingActionButton: IconButton(
          onPressed: () {
            _key.currentState!.push(
              MaterialPageRoute(builder: (context) => const WebViwAllBorders()),
            );
          },
          icon: const Icon(Icons.web),
        ),
      ),
    );
  }
}

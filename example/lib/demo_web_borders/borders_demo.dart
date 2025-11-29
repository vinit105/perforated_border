import 'package:flutter/material.dart';
import 'package:perforated_border/perforated_border.dart';

class WebViwAllBorders extends StatefulWidget {
  const WebViwAllBorders({super.key});

  @override
  State<WebViwAllBorders> createState() => _WebViwAllBordersState();
}

class _WebViwAllBordersState extends State<WebViwAllBorders> {
  bool showContainerColor = false;
  bool showFlutterLogoColor = false;
  bool changeColor = false;
  double width = 2;
  double dentRadius = 6;
  double flatRadius = 3;
  double stripeCountPerforated = 15;
  double stripeCountZigZag = 10;
  double stripeCountWavy = 10;
  double stripeCountBumper = 10;
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.sizeOf(context).width < 1020) {
      return const Scaffold(
          body: Center(
        child: Text('Web Full Size Support ONLY'),
      ));
    }
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "All Container,Size - --> 180 (40 padding +100 logo +40 padding )",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                spacing: 80,
                children: [
                  PerforatedBorder(
                    options: ZigzagBorderOptions(
                      stripeCount: stripeCountZigZag,
                      borderSideOptions: BorderSideOptions(
                        strokeWidth: width,

                        /// under development
                        //  color: changeColor
                        // ? Colors.redAccent
                        // : Colors.transparent,
                      ),
                      borderColor:
                          changeColor ? Colors.redAccent : Colors.black,
                    ),
                    child: Container(
                      color: showContainerColor
                          ? Colors.black12
                          : Colors.transparent,
                      padding: const EdgeInsets.all(40),
                      child: Container(
                        color: showFlutterLogoColor
                            ? Colors.yellow
                            : Colors.transparent,
                        child: const FlutterLogo(
                          size: 100,
                        ),
                      ),
                    ),
                  ),
                  PerforatedBorder(
                    options: WavyBorderOptions(
                      borderSideOptions: BorderSideOptions(
                        strokeWidth: width,

                        /// under development
                        //  color: changeColor
                        // ? Colors.redAccent
                        // : Colors.transparent,
                      ),
                      borderColor:
                          changeColor ? Colors.redAccent : Colors.black,
                      stripeCount: stripeCountWavy,
                    ),
                    child: Container(
                      color: showContainerColor
                          ? Colors.black12
                          : Colors.transparent,
                      padding: const EdgeInsets.all(40),
                      child: Container(
                        color: showFlutterLogoColor
                            ? Colors.yellow
                            : Colors.transparent,
                        child: const FlutterLogo(
                          size: 100,
                        ),
                      ),
                    ),
                  ),
                  PerforatedBorder(
                    options: BumperBorderOptions(
                      borderSideOptions: BorderSideOptions(
                        strokeWidth: width,

                        /// under development
                        //  color: changeColor
                        // ? Colors.redAccent
                        // : Colors.transparent,
                      ),
                      borderColor:
                          changeColor ? Colors.redAccent : Colors.black,
                      stripeCount: stripeCountBumper,
                    ),
                    child: Container(
                      color: showContainerColor
                          ? Colors.black12
                          : Colors.transparent,
                      padding: const EdgeInsets.all(40),
                      child: Container(
                        color: showFlutterLogoColor
                            ? Colors.yellow
                            : Colors.transparent,
                        child: const FlutterLogo(
                          size: 100,
                        ),
                      ),
                    ),
                  ),
                  PerforatedBorder(
                    options: BumperBorderOptions(
                      stripeCount: 10,
                      borderSideOptions: BorderSideOptions.allSides(
                        color: Colors.black,
                        style: PaintingStyle.stroke,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: FlutterLogo(size: 60),
                    ),
                  ),
                  PerforatedBorder(
                    options: PerforatedBorderOptions(
                      flatWidth: flatRadius,
                      dentRadius: dentRadius,
                      stripeCount: stripeCountPerforated,
                      borderSideOptions: BorderSideOptions(
                        strokeWidth: width,

                        /// under development
                        //  color: changeColor
                        // ? Colors.redAccent
                        // : Colors.transparent,
                      ),
                      borderColor:
                          changeColor ? Colors.redAccent : Colors.black,
                    ),
                    child: Container(
                      color: showContainerColor
                          ? Colors.black12
                          : Colors.transparent,
                      padding: const EdgeInsets.all(40),
                      child: Container(
                        color: showFlutterLogoColor
                            ? Colors.yellow
                            : Colors.transparent,
                        child: const FlutterLogo(
                          size: 100,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                spacing: 20,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        showContainerColor = true;
                        showFlutterLogoColor = true;
                        changeColor = true;
                        width = 2;
                        dentRadius = 6;
                        flatRadius = 3;
                        stripeCountPerforated = 15;
                        stripeCountZigZag = 10;
                        stripeCountWavy = 10;
                        stripeCountBumper = 10;
                      });
                    },
                    child: const Text('DEFAULT ALL'),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        changeColor = !changeColor;
                      });
                    },
                    child: const Text('Change Color'),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        showContainerColor = !showContainerColor;
                      });
                    },
                    child: const Text('Show Container Color'),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        showFlutterLogoColor = !showFlutterLogoColor;
                      });
                    },
                    child: const Text('Show Flutter Color'),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Column(
                children: [
                  Row(
                    spacing: 20,
                    children: [
                      Text('Change Width---> ${width.toInt()}'),
                      Slider(
                          value: width,
                          min: 1,
                          max: 20,
                          onChanged: (value) {
                            setState(() {
                              width = value;
                            });
                          }),
                    ],
                  ),
                  Row(
                    spacing: 20,
                    children: [
                      Text('Change DentRadius---> ${dentRadius.toInt()}'),
                      Slider(
                          value: dentRadius,
                          min: 1,
                          max: 200,
                          onChanged: (value) {
                            setState(() {
                              dentRadius = value;
                            });
                          }),
                    ],
                  ),
                  Row(
                    spacing: 20,
                    children: [
                      Text('Change FlatRadius---> ${flatRadius.toInt()}'),
                      Slider(
                          value: flatRadius,
                          min: 1,
                          max: 200,
                          onChanged: (value) {
                            setState(() {
                              flatRadius = value;
                            });
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    spacing: 20,
                    children: [
                      Text(
                          'Change stripeCountPerforated---> ${stripeCountPerforated.toInt()}'),
                      Slider(
                          value: stripeCountPerforated,
                          min: 1,
                          max: 500,
                          onChanged: (value) {
                            setState(() {
                              stripeCountPerforated = value;
                            });
                          }),
                    ],
                  ),
                  Row(
                    spacing: 20,
                    children: [
                      Text(
                          'Change stripeCountWavy---> ${stripeCountWavy.toInt()}'),
                      Slider(
                          value: stripeCountWavy,
                          min: 1,
                          max: 500,
                          onChanged: (value) {
                            setState(() {
                              stripeCountWavy = value;
                            });
                          }),
                    ],
                  ),
                  Row(
                    spacing: 20,
                    children: [
                      Text(
                          'Change stripeCountZigZag---> ${stripeCountZigZag.toInt()}'),
                      Slider(
                          value: stripeCountZigZag,
                          min: 1,
                          max: 500,
                          onChanged: (value) {
                            setState(() {
                              stripeCountZigZag = value;
                            });
                          }),
                    ],
                  ),
                  Row(
                    spacing: 20,
                    children: [
                      Text(
                          'Change stripeCountBumper---> ${stripeCountBumper.toInt()}'),
                      Slider(
                          value: stripeCountBumper,
                          min: 1,
                          max: 200,
                          onChanged: (value) {
                            setState(() {
                              stripeCountBumper = value;
                            });
                          }),
                    ],
                  ),
                  const Text(
                    "UnExpected Not Recommended Behaviour Shapes",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  PerforatedBorder(
                    options: ZigzagBorderOptions(
                      stripeCount: 180,
                      borderSideOptions: BorderSideOptions(
                        strokeWidth: width,

                        /// under development
                        //  color: changeColor
                        // ? Colors.redAccent
                        // : Colors.transparent,
                      ),
                      borderColor:
                          changeColor ? Colors.redAccent : Colors.black,
                    ),
                    child: Container(
                      color: showContainerColor
                          ? Colors.black12
                          : Colors.transparent,
                      padding: const EdgeInsets.all(40),
                      child: Container(
                        color: showFlutterLogoColor
                            ? Colors.yellow
                            : Colors.transparent,
                        child: const FlutterLogo(
                          size: 100,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 180,
                  ),
                  PerforatedBorder(
                    options: WavyBorderOptions(
                      stripeCount: 180,
                      borderSideOptions: BorderSideOptions(
                        strokeWidth: width,

                        /// under development
                        //  color: changeColor
                        // ? Colors.redAccent
                        // : Colors.transparent,
                      ),
                      borderColor:
                          changeColor ? Colors.redAccent : Colors.black,
                    ),
                    child: Container(
                      color: showContainerColor
                          ? Colors.black12
                          : Colors.transparent,
                      padding: const EdgeInsets.all(40),
                      child: Container(
                        color: showFlutterLogoColor
                            ? Colors.yellow
                            : Colors.transparent,
                        child: const FlutterLogo(
                          size: 100,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 280,
                  ),
                  PerforatedBorder(
                    options: BumperBorderOptions(
                      stripeCount: 180,
                      borderSideOptions: BorderSideOptions(
                        strokeWidth: width,

                        /// under development
                        //  color: changeColor
                        // ? Colors.redAccent
                        // : Colors.transparent,
                      ),
                      borderColor:
                          changeColor ? Colors.redAccent : Colors.black,
                    ),
                    child: Container(
                      color: showContainerColor
                          ? Colors.black12
                          : Colors.transparent,
                      padding: const EdgeInsets.all(40),
                      child: Container(
                        color: showFlutterLogoColor
                            ? Colors.yellow
                            : Colors.transparent,
                        child: const FlutterLogo(
                          size: 100,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 180,
                  ),
                  PerforatedBorder(
                    options: PerforatedBorderOptions(
                      flatWidth: 1,
                      dentRadius: 44,
                      stripeCount: 1,
                      borderSideOptions: BorderSideOptions(
                        strokeWidth: width,

                        /// under development
                        //  color: changeColor
                        // ? Colors.redAccent
                        // : Colors.transparent,
                      ),
                      borderColor:
                          changeColor ? Colors.redAccent : Colors.black,
                    ),
                    child: Container(
                      color: showContainerColor
                          ? Colors.black12
                          : Colors.transparent,
                      padding: const EdgeInsets.all(40),
                      child: Container(
                        color: showFlutterLogoColor
                            ? Colors.yellow
                            : Colors.transparent,
                        child: const FlutterLogo(
                          size: 100,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 180,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

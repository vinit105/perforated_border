import 'package:flutter/material.dart';
import 'package:perforated_border/perforated_border.dart';

class DemoUseCasesWidget extends StatefulWidget {
  const DemoUseCasesWidget({super.key});

  @override
  State<DemoUseCasesWidget> createState() => _DemoUseCasesWidgetState();
}

class _DemoUseCasesWidgetState extends State<DemoUseCasesWidget> {
  // double dentRadius = 6;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text(dentRadius.toString()),
        // Slider(
        //   value: dentRadius,
        //   min: 1,
        //   max: 200,
        //   onChanged: (value) {
        //     setState(() {
        //       dentRadius = value;
        //     });
        //   },
        // ),
        Container(
          padding: const EdgeInsets.all(12),
          width: 380,
          child: PerforatedBorder(
            options: ZigzagBorderOptions(
              stripeCount: 16.347,
              paint: Paint()
                ..shader = const LinearGradient(
                  colors: [
                    Color(0xFF7B2FF7),
                    Color(0xFF5F19C8),
                    Color(0xFF0AA8FF),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(const Rect.fromLTWH(0, 0, 380, 180)),
              borderSideOptions: const BorderSideOptions.symmetric(
                strokeWidth: 2,
                color: Colors.deepPurple,
                style: PaintingStyle.stroke,
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(22),
              child: Row(
                children: [
                  // Left section (ticket details)
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "FLUTTER CONF 2025",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1.2,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "VIP PASS • FRONT ROW",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white.withValues(alpha: 0.9),
                          ),
                        ),
                        const SizedBox(height: 14),
                        const Row(
                          children: [
                            Icon(Icons.calendar_month,
                                color: Colors.white, size: 18),
                            SizedBox(width: 6),
                            Text(
                              "24 DEC 2025",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Row(
                          children: [
                            Icon(Icons.schedule, color: Colors.white, size: 18),
                            SizedBox(width: 6),
                            Text(
                              "7:30 PM",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 12),

                  // Right Section - QR + Logo
                  Column(
                    children: [
                      const FlutterLogo(size: 55),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "A2F9G7",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(12),
          width: 380,
          child: PerforatedBorder(
            options: ZigzagBorderOptions(
              stripeCount: 11.347,
              paint: Paint()
                ..shader = const LinearGradient(
                  colors: [
                    Color(0xFF4A148C), // deep violet
                    Color(0xFF7B1FA2), // royal purple
                    Color(0xFFCE93D8), // soft lavender highlight
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(const Rect.fromLTWH(0, 0, 380, 200)),
              borderSideOptions: const BorderSideOptions.symmetric(
                strokeWidth: 2.2,
                color: Color(0xFF38006B),
                style: PaintingStyle.stroke,
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(22),
              child: Row(
                children: [
                  // LEFT — chocolate info vibe
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CHOCOLATE PREMIUM",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            letterSpacing: 1.5,
                            shadows: [
                              Shadow(
                                blurRadius: 10,
                                color: Colors.black.withValues(alpha: 0.4),
                                offset: const Offset(2, 3),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Premium Violet Edition",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white.withValues(alpha: 0.85),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Row(
                          children: [
                            Icon(Icons.cookie, color: Colors.white, size: 18),
                             SizedBox(width: 6),
                             Text(
                              "Dark Cocoa 72%",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Row(
                          children: [
                            Icon(Icons.local_cafe,
                                color: Colors.white, size: 18),
                             SizedBox(width: 6),
                             Text(
                              "Smooth Melt Texture",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 12),

                  // Right — chocolate square
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFF311B92),
                              Color(0xFF512DA8),
                              Color(0xFF9575CD),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 8,
                              spreadRadius: 1,
                              color: Colors.black.withValues(alpha:0.25),
                              offset: const Offset(2, 3),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                          size: 38,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "VIOLET-98",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(12),
          width: 380,
          height: 620,
          child: PerforatedBorder(
            options: ZigzagBorderOptions(
              stripeCount: 17.82,
              paint: Paint()
                ..shader = const LinearGradient(
                  colors: [
                    Color(0xFF7B2FF7),
                    Color(0xFF5F19C8),
                    Color(0xFF0AA8FF),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(const Rect.fromLTWH(0, 0, 380, 620)),
              borderSideOptions: const BorderSideOptions.symmetric(
                borderSideType: BorderSideType.vertical,
                strokeWidth: 2,
                color: Colors.deepPurple,
                style: PaintingStyle.stroke,
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 🔥 Big Header
                  Text(
                    "SPECIAL ADVERT",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.5,
                      shadows: [
                        Shadow(
                          blurRadius: 12,
                          offset: const Offset(2, 3),
                          color: Colors.black.withValues(alpha:0.35),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  // ⭐ Sub headline
                  Text(
                    "Modern • Stylish • Elegant",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white.withValues(alpha: 0.85),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // 📸 FEATURED IMAGE PLACEHOLDER
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Colors.white54,
                        width: 1.2,
                      ),
                    ),
                    child: Icon(
                      Icons.image,
                      size: 100,
                      color: Colors.white.withValues(alpha: 0.6),
                    ),
                  ),

                  const SizedBox(height: 28),

                  // 📌 DESCRIPTION CONTENT
                  Text(
                    "This is a premium advertising banner designed with a clean layout, beautiful gradients, and vertical zigzag edge patterns. "
                    "Perfect for showcasing offers, product promotions, and event announcements.",
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.white.withValues(alpha: 0.9),
                    ),
                  ),

                  const SizedBox(height: 26),

                  // ⭐ Key highlights
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Row(
                        children: [
                          Icon(Icons.check_circle,
                              color: Colors.white, size: 20),
                          SizedBox(width: 8),
                          Text("Clean modern design",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.check_circle,
                              color: Colors.white, size: 20),
                          SizedBox(width: 8),
                          Text("Bold advertisement layout",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.check_circle,
                              color: Colors.white, size: 20),
                          SizedBox(width: 8),
                          Text("Perfect for product highlights",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),

                  const Spacer(),

                  // 🔥 CALL TO ACTION BUTTON
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Center(
                      child: Text(
                        "LEARN MORE",
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        Container(
          padding: const EdgeInsets.all(12),
          width: 380,
          child: PerforatedBorder(
            options: BumperBorderOptions(
              stripeCount: 11.347,
              paint: Paint()
                ..shader = const LinearGradient(
                  colors: [
                    Color(0xFF4A148C), // deep violet
                    Color(0xFF7B1FA2), // royal purple
                    Color(0xFFCE93D8), // soft lavender highlight
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(const Rect.fromLTWH(0, 0, 380, 200)),
              borderSideOptions: const BorderSideOptions.symmetric(
                strokeWidth: 2.2,
                color: Color(0xFF38006B),
                style: PaintingStyle.stroke,
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(22),
              child: Row(
                children: [
                  // LEFT — chocolate info vibe
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CHOCOLATE PREMIUM",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            letterSpacing: 1.5,
                            shadows: [
                              Shadow(
                                blurRadius: 10,
                                color: Colors.black.withValues(alpha: 0.4),
                                offset: const Offset(2, 3),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Premium Violet Edition",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white.withValues(alpha: 0.85),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Row(
                          children: [
                            Icon(Icons.cookie, color: Colors.white, size: 18),
                             SizedBox(width: 6),
                             Text(
                              "Dark Cocoa 72%",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Row(
                          children: [
                            Icon(Icons.local_cafe,
                                color: Colors.white, size: 18),
                             SizedBox(width: 6),
                             Text(
                              "Smooth Melt Texture",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 12),

                  // Right — chocolate square
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFF311B92),
                              Color(0xFF512DA8),
                              Color(0xFF9575CD),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 8,
                              spreadRadius: 1,
                              color: Colors.black.withValues(alpha:0.25),
                              offset: const Offset(2, 3),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                          size: 38,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "VIOLET-98",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        Container(
          padding: const EdgeInsets.all(12),
          width: 380,
          child: PerforatedBorder(
            options: WavyBorderOptions(
              stripeCount: 11.517,
              paint: Paint()
                ..shader = const LinearGradient(
                  colors: [
                    Color(0xFF1B5E20), // deep forest green
                    Color(0xFF43A047), // lush emerald
                    Color(0xFFA5D6A7), // soft mint highlight
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(const Rect.fromLTWH(0, 0, 380, 200)),
              borderSideOptions: const BorderSideOptions.symmetric(
                strokeWidth: 2.2,
                borderSideType: BorderSideType.vertical,
                color: Color(0xFF38006B),
                style: PaintingStyle.stroke,
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(22),
              child: Row(
                children: [
                  // LEFT — chocolate info vibe
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CHOCOLATE PREMIUM",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            letterSpacing: 1.5,
                            shadows: [
                              Shadow(
                                blurRadius: 10,
                                color: Colors.black.withValues(alpha: 0.4),
                                offset: const Offset(2, 3),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Premium Violet Edition",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white.withValues(alpha: 0.85),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Row(
                          children: [
                            Icon(Icons.cookie, color: Colors.white, size: 18),
                             SizedBox(width: 6),
                             Text(
                              "Dark Cocoa 72%",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Row(
                          children: [
                            Icon(Icons.local_cafe,
                                color: Colors.white, size: 18),
                             SizedBox(width: 6),
                             Text(
                              "Smooth Melt Texture",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 12),

                  // Right — chocolate square
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFF311B92),
                              Color(0xFF512DA8),
                              Color(0xFF9575CD),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 8,
                              spreadRadius: 1,
                              color: Colors.black.withValues(alpha:0.25),
                              offset: const Offset(2, 3),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                          size: 38,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "VIOLET-98",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(12),
          width: 380,
          child: PerforatedBorder(
            options: PerforatedBorderOptions(
              dentRadius: 9,
              flatWidth: 5,
              stripeCount: 19.2,
              paint: Paint()
                ..shader = const LinearGradient(
                  colors: [
                    Color(0xFF000000), // pure black
                    Color(0xFF1A1A1A), // deep charcoal
                    Color(0xFF64416E), // soft graphite highlight
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(const Rect.fromLTWH(0, 0, 380, 180)),
              borderSideOptions: const BorderSideOptions.symmetric(
                strokeWidth: 2.3,
                color: Color(0xFFBFBFBF), // metallic silver outline
                style: PaintingStyle.stroke,
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(22),
              child: Row(
                children: [
                  // LEFT — Movie Info

                  const SizedBox(width: 15),
                  // RIGHT — Poster + Code
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 65,
                        height: 90,
                        child:  Icon(
                          Icons.movie,
                          color: Colors.white,
                          size: 38,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "GRN-452",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 45),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "THE EMERALD ODYSSEY",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            letterSpacing: 1.3,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "PREMIERE • IMAX 3D",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white.withValues(alpha: 0.85),
                          ),
                        ),
                        const SizedBox(height: 18),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.calendar_month,
                                color: Colors.white, size: 18),
                            SizedBox(width: 6),
                            Text(
                              "12 JAN 2026",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Row(
                          children: [
                            Icon(Icons.schedule, color: Colors.white, size: 18),
                            SizedBox(width: 6),
                            Text(
                              "9:45 PM",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(12),
          width: 380,
          child: PerforatedBorder(
            options: PerforatedBorderOptions(
              dentRadius: 8,
              flatWidth: 7,
              stripeCount: 1.5,
              paint: Paint()
                ..shader = const LinearGradient(
                  colors: [
                    Color(0xFF1A002B), // deep purple black
                    Color(0xFF3B0F59), // neon plum
                    Color(0xFF8E44FD), // holographic violet
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ).createShader(const Rect.fromLTWH(0, 0, 380, 200)),
              borderSideOptions: const BorderSideOptions.symmetric(
                borderSideType: BorderSideType.vertical,
                strokeWidth: 2.5,
                color: Color(0xFF9B59B6), // holo violet outline
                style: PaintingStyle.stroke,
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(20),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // POSTER + DETAILS ROW
                  Row(
                    children: [
                      // Poster Image
                      Container(
                        width: 80,
                        height: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF8E44FD).withValues(alpha:0.4),
                              blurRadius: 1,
                              spreadRadius: 1,
                              offset: const Offset(2, 3),
                            ),
                          ],
                        ),
                        child: const Icon(Icons.qr_code,size: 75,color: Colors.white,),
                      ),

                      const SizedBox(width: 18),

                      // Right Text Info
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "MIDNIGHT MIRAGE",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                letterSpacing: 1.1,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "ULTRA SCREEN • 4DX",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white.withValues(alpha: 0.75),
                              ),
                            ),
                            const SizedBox(height: 16),
                            const Row(
                              children:  [
                                Icon(Icons.calendar_today,
                                    color: Colors.white, size: 18),
                                SizedBox(width: 6),
                                Text(
                                  "28 FEB 2026",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            const SizedBox(height: 6),
                            const Row(
                              children:  [
                                Icon(Icons.access_time,
                                    color: Colors.white, size: 18),
                                SizedBox(width: 6),
                                Text(
                                  "11:30 PM",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Ticket Code Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "SEAT • ROW A - 07",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                          letterSpacing: 0.8,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFF9B59B6),
                              Color(0xFF8E44FD),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          "VIO-935",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

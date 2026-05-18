import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'step_four_screen.dart';

class StepThreeScreen extends StatelessWidget {
  const StepThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg3.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Gradient Overlay from bottom
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                  Colors.white.withOpacity(0.3),
                  Colors.white.withOpacity(0.7),
                  Colors.white,
                ],
                stops: const [0.0, 0.3, 0.5, 0.7, 0.9],
              ),
            ),
          ),
          // Content
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                // Page Indicator
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    width: 50,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.004),
                      borderRadius: BorderRadius.circular(51),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        '3/4',
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF010101),
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Title - LEFT ALIGNED
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Confident & Safe\nJourneys',
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF010101),
                      height: 1.2,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 12),
                // Subtitle - LEFT ALIGNED
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Get real-time updates, smart tips, and 24/7\nsupport wherever you go.',
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF010101).withOpacity(0.7),
                      height: 1.2,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 50),
                // Buttons Row
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 58,
                        height: 58,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xFF010101).withOpacity(0.5),
                            width: 1.15,
                          ),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: const Color(0xFF010101).withOpacity(0.5),
                            size: 20,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          padding: EdgeInsets.zero,
                        ),
                      ),
                      Container(
                        height: 60,
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        decoration: BoxDecoration(
                          color: const Color(0xFFE6232C),
                          borderRadius: BorderRadius.circular(66),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const StepFourScreen()),
                            );
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Text(
                            'NEXT',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white.withOpacity(0.9),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlashPage extends StatelessWidget {
  const FlashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF32A970),
              Color(0xFF48E087),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/app-icon.png'),
            Text(
              'Omotenashi',
              style: GoogleFonts.viga(
                fontSize: 40,
                color: Colors.white,
                letterSpacing: 0.5,
              ),
            ),
            Text(
              'Asian Food & Halal Food',
              style: GoogleFonts.inter(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF7F7D8B)),
            ),
          ],
        ),
      ),
    );
  }
}

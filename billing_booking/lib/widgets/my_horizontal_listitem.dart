import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHorizontalListitem extends StatelessWidget {
  const MyHorizontalListitem({
    Key? key,
    required this.endColor,
    required this.courceImage,
    required this.startColor,
    required this.courceHeadline,
    required this.courceTitile,
  }) : super(key: key);

  final int startColor, endColor;
  final String courceHeadline, courceTitile, courceImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 23),
      child: Container(
        width: 246,
        height: 349,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(1, 0.0),
                colors: <Color>[
                  Color.fromARGB(255, 147, 136, 228),
                  Color.fromARGB(255, 175, 168, 238)
                ])),
        child: Stack(
          children: [
            Positioned(
              top: 15,
              left: 11,
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 39,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 175, 168, 238),
                    borderRadius: BorderRadius.circular(36)),
                child: Text(
                  courceTitile,
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 16),
                ),
              ),
            ),
            Positioned(
              top: 80,
              left: 11,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  courceHeadline,
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 25),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    courceImage,
                    scale: 1.4,
                  )),
            )
          ],
        ),
      ),
    );
  }
}

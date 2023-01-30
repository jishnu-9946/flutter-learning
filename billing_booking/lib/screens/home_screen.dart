import 'package:billing_booking/constants/constants.dart';
import 'package:billing_booking/widgets/my_horizontal_listitem.dart';
import 'package:billing_booking/widgets/test.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBgColor,
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 55),
              Text(
                "Online",
                style: GoogleFonts.roboto(
                    fontSize: 36,
                    color: primaryTextColor,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "Master Class",
                style: GoogleFonts.roboto(
                    fontSize: 36,
                    color: primaryTextColor,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          const SizedBox(height: 22),
          SizedBox(
              height: 349,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const MyHorizontalListitem(
                        endColor: 0xAFA8EE,
                        courceImage: 'assets/images/pic1.png',
                        startColor: 0x9288E4,
                        courceHeadline: 'UI/UX DESIGNER \n BEGINNER',
                        courceTitile: 'Recomended');
                  })),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 55),
              Text(
                "Free online class",
                style: GoogleFonts.roboto(
                    fontSize: 25,
                    color: primaryTextColor,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Master Class",
                style: GoogleFonts.roboto(
                    fontSize: 36,
                    color: primaryTextColor,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ],
      )),
    );
  }
}

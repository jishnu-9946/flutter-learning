import 'package:billing_booking/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class MyVirticalListitems extends StatelessWidget {
  const MyVirticalListitems(
      {Key? key,
      required this.hText,
      required this.hDuration,
      required this.hImage,
      required this.courcerating})
      : super(key: key);
  final String hText, hDuration, hImage;
  final double courcerating;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: SizedBox(
        height: 134,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              height: 92,
              width: MediaQuery.of(context).size.width -
                  (MediaQuery.of(context).size.width * 0.13),
              decoration: BoxDecoration(
                  color: smallboxcolor,
                  borderRadius: BorderRadius.circular(20)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 26, bottom: 32),
              child: Row(
                children: [
                  Container(
                      height: 124,
                      width: 117,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(hImage),
                              fit: BoxFit.fitHeight))),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          hText,
                          style: GoogleFonts.roboto(
                              fontSize: 18,
                              color: primaryTextColor,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          hDuration,
                          style: GoogleFonts.roboto(
                              fontSize: 12,
                              color: courcesubr,
                              fontWeight: FontWeight.w400),
                        ),
                        RatingBar.builder(
                          initialRating: courcerating,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 18,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (courcerating) {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                bottom: 32,
                right: 0,
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.08,
                  width: MediaQuery.of(context).size.width * 0.08,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFEB53A2)),
                child: const Icon(Icons.play_arrow,color: Colors.white,),
                )
                )
          ],
        ),
      ),
    );
  }
}

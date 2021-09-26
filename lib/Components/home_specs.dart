import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olaelectric/Theme/theme_data.dart';

Widget specs(String value, String title, String desc) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            value,
            style: theme.textTheme.headline2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              title,
              style: theme.textTheme.headline1,
            ),
          ),
        ],
      ),
      Text(
        desc,
        style: theme.textTheme.headline3,
      ),
    ],
  );
}

Widget s1(String title, String del, String purch) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 40,
                height: 20,
                child: SvgPicture.asset(
                  'assets/images/ola.svg',
                  fit: BoxFit.fill,
                  color: Colors.white,
                ),
              ),
              Text(
                title,
                style: theme.textTheme.bodyText1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: SizedBox(
                  width: 1,
                  height: 40,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200]!.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Starting from',
                      style: theme.textTheme.headline4,
                    ),
                    Text(
                      '₹ 99,999',
                      style: theme.textTheme.headline5,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
      Text(
        'Purchase starts from',
        style: theme.textTheme.headline4,
      ),
      Text(
        'Delivery starts from',
        style: theme.textTheme.headline4,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 5),
        child: SizedBox(
          width: 120,
          height: 30,
          child: Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff16AB51),
                    Color(0xff60BE85),
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Reserve",
                  style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              )),
        ),
      )
    ],
  );
}

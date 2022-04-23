import 'dart:ui';

import 'package:ecommerce_app/Utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.blueColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [introText(), introImage(), introStartButton()],
        ),
      ),
    );
  }

  Widget introText() => Container(
        margin: EdgeInsets.only(left: 35.w),
        child: Text(
          "Find your Gadget",
          style: GoogleFonts.raleway(
              fontSize: 65.sp,
              fontWeight: FontWeight.bold,
              color: ColorUtils.whiteColor),
        ),
      );

  Widget introImage() => Stack(
        children: [
          SizedBox(
              width: 486.w,
              height: 486.h,
              child: Image.asset("assets/splashLogo.png")),
          Container(
              margin: const EdgeInsets.only(top: 360),
              child: Image.asset("assets/shawdow.png")),
        ],
      );

  Widget introStartButton() => SizedBox(
        width: 314.w,
        height: 70.h,
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(ColorUtils.whiteColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r)
                )
              )
            ),
            onPressed: () {},
            child: Center(
              child: Text(
                "Get started",
                style: GoogleFonts.raleway(
                    color: ColorUtils.blueColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp),
              ),
            )),
      );
}

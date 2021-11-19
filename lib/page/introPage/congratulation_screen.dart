import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/prefs/shared_pref_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Congratulation extends StatefulWidget {
  const Congratulation({Key? key}) : super(key: key);

  @override
  _CongratulationState createState() => _CongratulationState();
}

class _CongratulationState extends State<Congratulation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 240.h),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset("icon/congratulation.svg"),
              SizedBox(
                height: 24.h,
              ),
              Text(
                "Congratulations",
                style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                "Your register has been completed. Now you can start discovering your favourite books and hope you enjoy this application",
                style: TextStyle(fontSize: 14.sp, color: Text2),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 32.h,
              ),
              SizedBox(
                // margin: EdgeInsets.only(left: 24.w,right: 24.w,bottom: 40.h),
                height: 52.h,
                width: 327.w,
                child: ElevatedButton(
                  onPressed: () {
                    SharedPrefController().setLanguage(lang: true);
                    Navigator.of(context).pushNamed("/main_screen");
                  },
                  child: Text(
                    "Start reading",
                    style: TextStyle(color: Text1),
                  ),
                  style: ElevatedButton.styleFrom(primary: MainColor
                      // maximumSize: Size(327.w,52.h)
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

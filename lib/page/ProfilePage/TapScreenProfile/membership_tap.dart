import 'package:best_book_app/Theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class MembershipTap extends StatefulWidget {
  const MembershipTap({Key? key}) : super(key: key);

  @override
  _MembershipTapState createState() => _MembershipTapState();
}

class _MembershipTapState extends State<MembershipTap> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
      children: [
        Text(
          "Membership",
          style: TextStyle(
              color: Text1, fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 24.h,
        ),
        Row(
          children: [
            Text(
              "Your package:  " ,
              style: TextStyle(fontSize: 12.sp, color: Text2),
            ),
            Text(
              "\$90 - 6 months read",
              style: TextStyle(fontSize: 14.sp, color: Text1),
            ),
          ],
        ),
        SizedBox(
          height: 12.h,
        ),
        Text(
          "Your package will be expired at next 10 days. It will be auto-renewal by book lover app.",
          style: TextStyle(fontSize: 12.sp, color: Text2),
        ),
        SizedBox(
          height: 32.h,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "Change",
            style: TextStyle(color: Text1),
          ),
          style: ElevatedButton.styleFrom(
            maximumSize: Size(double.infinity, 52.h),
            primary: Colors.white54,
            elevation: 0,
            shape:  RoundedRectangleBorder(side: BorderSide(width: .2.w,color: Colors.grey),borderRadius: BorderRadius.all(Radius.circular(4))),
          ),
        )
      ],
    );
  }
}

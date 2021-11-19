import 'package:best_book_app/Theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SecurityTap extends StatefulWidget {
  const SecurityTap({Key? key}) : super(key: key);

  @override
  _SecurityTapState createState() => _SecurityTapState();
}

class _SecurityTapState extends State<SecurityTap> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
      children: [
        Text(
          "Security",
          style: TextStyle(
              color: Text1, fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),

      ],
    );
  }
}

import 'package:best_book_app/Theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AuthorForYou extends StatelessWidget {
  const AuthorForYou({
    Key? key,
    required this.name,
    required this.image,
    required this.topicname
  }) : super(key: key);
  final String image;
  final String name;
  final String topicname;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 24.w, top: 40.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 54.w,
            backgroundImage:
             AssetImage(image),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            name,
            style: TextStyle(
                color: Text1,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Book number : "+topicname,
            style: TextStyle(color: Text2, fontSize: 14.sp),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
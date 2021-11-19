import 'package:best_book_app/Theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BookYouMyLove extends StatelessWidget {
  const BookYouMyLove({
    Key? key,
    required this.nametopic,
    required this.image,
    required this.authorname
  }) : super(key: key);
  final String image;
  final String nametopic;
  final String authorname;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 24.w, top: 40.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)),
              height: 166.h,
              width: 108.w,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              )),
          const SizedBox(
            height: 8,
          ),
          Text(
            nametopic,
            style: TextStyle(color: Text2, fontSize: 14.sp),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            authorname,
            style: TextStyle(
                color: Bordercolor, fontSize: 14.sp),
          ),
        ],
      ),
    );
  }
}
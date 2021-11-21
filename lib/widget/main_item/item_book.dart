import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/models/book_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ItemBook extends StatelessWidget {
   ItemBook({
    Key? key,
 required this.bookAll,
      this.bel=false
  }) :  super(key: key);
  BookAll bookAll;
  bool bel;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 98.h,
                width: 64.w,
                child: Image.asset(bookAll.image)),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left:13.w,right:13.w ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bookAll.name,
                      style: TextStyle(
                          color: Text1,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp),
                    ),
                     SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      bookAll.nameTopic,
                      style: TextStyle(color: Text2, fontSize: 12.sp),
                    ),
                     SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      bookAll.nameAuthor,
                      style: TextStyle(color: Text1, fontSize: 12.sp),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: AlignmentDirectional.center,
              child: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
        SizedBox(
          height: 24.h,
        ),
        Divider(
          height: 1.h,
          color: Bordercolor,
        ),
        SizedBox(
          height: 24.h,
        ),
      ],
    );
  }
}
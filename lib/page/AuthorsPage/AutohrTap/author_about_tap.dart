import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/models/authors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AuthorAboutTap extends StatefulWidget {
   AuthorAboutTap({Key? key,required this.authors}) : super(key: key);
  Authors authors;
  @override
  _AuthorAboutTapState createState() => _AuthorAboutTapState();
}

class _AuthorAboutTapState extends State<AuthorAboutTap> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 20.h),
      shrinkWrap: true,
      children: [
      Text("Date of birth:  January 1st 1980",style: TextStyle(fontSize: 14.sp,color: Text1),),
      SizedBox(height: 16.h,),
      Text("Nationality:  Czech Republic",style: TextStyle(fontSize: 14.sp,color: Text1),),
      SizedBox(height:32.h),
      Text(widget.authors.des,style: TextStyle(fontSize: 14.sp,color: Text1),),
    ],);
  }
}

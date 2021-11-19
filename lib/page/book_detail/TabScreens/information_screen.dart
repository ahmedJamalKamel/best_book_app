import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/models/book_all.dart';
import 'package:best_book_app/models/book_greatest.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InformationScreens extends StatefulWidget {
   InformationScreens({Key? key,required this.m}) : super(key: key);
   BookAll m;
  @override
  _InformationScreensState createState() => _InformationScreensState();
}

class _InformationScreensState extends State<InformationScreens> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 20.w),
        shrinkWrap: true,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Category",style: TextStyle(fontSize: 14.sp,color: Text2),),
            Text(widget.m.nameTopic,style: TextStyle(fontSize: 14.sp,color: Text1),)
          ],),
          SizedBox(height: 24.h,),
          Divider(height: 1.h,color: Bordercolor,),
          SizedBox(height: 24.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Created",style: TextStyle(fontSize: 14.sp,color: Text2),),
              Text(widget.m.dateCreated,style: TextStyle(fontSize: 14.sp,color: Text1),)
            ],),
          SizedBox(height: 24.h,),
          Divider(height: 1.h,color: Bordercolor,),
          SizedBox(height: 24.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Author",style: TextStyle(fontSize: 14.sp,color: Text2),),
              Text(widget.m.nameAuthor,style: TextStyle(fontSize: 14.sp,color: Text1),)
            ],),
          SizedBox(height: 24.h,),
          Divider(height: 1.h,color: Bordercolor,),
          SizedBox(height: 24.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Page number",style: TextStyle(fontSize: 14.sp,color: Text2),),
              Text(widget.m.pageNumber,style: TextStyle(fontSize: 14.sp,color: Text1),)
            ],),
          SizedBox(height: 24.h,),
          Divider(height: 1.h,color: Bordercolor,),
          SizedBox(height: 24.h,),

        ],
      ),
    );
  }
}

import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/Theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class OverviewScreen extends StatefulWidget {
   OverviewScreen({Key? key,required this.dis}) : super(key: key);
  String dis;
  @override
  _OverviewScreenState createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 20.w),
        shrinkWrap: true,
        children: [
          Text(widget.dis,style: TextStyle(color: Text2,fontSize: 14.sp),),
          // SizedBox(height: 20.h,),
          // Text("Tortor consequat id porta nibh venenatis. Vitae congue mauris rhoncus aenean vel. Sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae nunc. Cras fermentum odio eu feugiat pretium nibh. Nisl nunc mi ipsum faucibus vitae aliquet nec. Sagittis aliquam malesuada bibendum arcu vitae elementum curabitur.",style: TextStyle(color: Text2,fontSize: 14.sp),),
          // SizedBox(height: 24.h,),
          // Text("Tortor consequat id porta nibh venenatis. Vitae congue mauris rhoncus aenean vel. Sagittis aliquam malesuada bibendum arcu vitae elementum ",style: TextStyle(color: Text2,fontSize: 14.sp),)
        ],
      ),
    );
  }
}

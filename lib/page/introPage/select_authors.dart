import 'dart:io';

import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/get/author_getx_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class SelectAuthor extends StatefulWidget {
  const SelectAuthor({Key? key}) : super(key: key);

  @override
  _SelectAuthorState createState() => _SelectAuthorState();
}

class _SelectAuthorState extends State<SelectAuthor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        margin: EdgeInsets.only(left: 24.w,right: 24.w,bottom: 40.h),
        height: 52.h,
        width:327.w ,
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/congratulation_screen");
          },
          child: Text("Done",style: TextStyle(color:Text1),),
          style: ElevatedButton.styleFrom(
              primary: MainColor
            // maximumSize: Size(327.w,52.h)
          ),
        ),
      ),
      body:Obx((){
        return  Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  alignment: AlignmentDirectional.center,
                  margin: EdgeInsets.only(top: 56.h),
                  child: Text(
                    'Authors',
                    style: TextStyle(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.bold,
                        color: HexColor("#2E3641")),
                  )),
              Container(
                  alignment: AlignmentDirectional.center,
                  margin: EdgeInsets.only(top: 24.h),
                  child: Text(
                    'Customize your interests so that you can discover your most favourite books.',
                    style: TextStyle(fontSize: 14.sp, color: Text2),
                    textAlign: TextAlign.center,
                  )),
              Container(
                //  alignment: AlignmentDirectional.center,
                  margin: EdgeInsets.only(top: 56.h),
                  child: Text(
                    'Top followed authors',
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Text1),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height - 250.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: AuthorGetxController.to.authors.value.length!=0?AuthorGetxController.to.authors.value.length:0,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                height: 64.h,
                                width: 64.w,
                                child: Image.asset(AuthorGetxController.to.authors.value[index].image)),
                            Container(margin: EdgeInsets.only(left: 24.w),child: Text(AuthorGetxController.to.authors.value[index].name,style: TextStyle(color:Text1,fontSize: 14.sp),)),
                            Spacer(),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  AuthorGetxController.to.authors.value[index].selected==1?AuthorGetxController.to.authors.value[index].selected=0:AuthorGetxController.to.authors.value[index].selected=1;
                                  AuthorGetxController.to.updateContact(AuthorGetxController.to.authors.value[index]);
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 12.w),
                                height: 40.h,
                                width: 40.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color:AuthorGetxController.to.authors.value[index].selected==0?Colors.white:MainColor,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.0, 1.0), //(x,y)
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                ),
                                child: AuthorGetxController.to.authors.value[index].selected==0?Icon(Icons.add,color: Colors.black,):Icon(Icons.check,color: Colors.black,),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.h,),
                        Divider(height: 1,color: Bordercolor,),
                        SizedBox(height: 24.h,),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}

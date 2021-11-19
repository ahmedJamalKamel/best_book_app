

import 'dart:io';

import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/database/controllers/topic_db_controller.dart';
import 'package:best_book_app/get/topic_getx_controller.dart';
import 'package:best_book_app/models/topics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class SelectTopics extends StatefulWidget {
  const SelectTopics({Key? key}) : super(key: key);

  @override
  _SelectTopicsState createState() => _SelectTopicsState();
}

class _SelectTopicsState extends State<SelectTopics> {
  // List<Topics> _topic=<Topics>[];
  // Future<List<Topics>>getdata()async{
  //   return _topic=await TopicDbController().read();
  // }
  @override
  void initState() {
    // getdata();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        margin: EdgeInsets.only(left: 24.w,right: 24.w,bottom: 40.h),
        height: 52.h,
        width:327.w ,
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/select_author_screen");
          },
          child: Text("Next",style: TextStyle(color:Text1),),
          style: ElevatedButton.styleFrom(
            primary: MainColor
           // maximumSize: Size(327.w,52.h)
          ),
        ),
      ),
      body: Obx((){
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              Container(
                alignment: AlignmentDirectional.center,
                margin: EdgeInsets.only(top: 56.h),
                child: Text(
                  'Your topics',
                  style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.bold,
                      color: HexColor("#2E3641")),
                ),
              ),
              Container(
                  alignment: AlignmentDirectional.center,
                  margin: EdgeInsets.only(top: 24.h),
                  child: Text(
                    'Customize your interests so that you can discover your most favourite books.',
                    style: TextStyle(fontSize: 14.sp, color: Text2),
                    textAlign: TextAlign.center,
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height - 228.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: TopicGetxController.to.Topic.value.length!=0?TopicGetxController.to.Topic.value.length:0,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                height: 64.h,
                                width: 64.w,
                                child: Image.asset(TopicGetxController.to.Topic.value[index].image)),
                            Container(margin: EdgeInsets.only(left: 24.w),child: Text(TopicGetxController.to.Topic.value[index].name,style: TextStyle(color:Text1,fontSize: 14.sp),)),
                            Spacer(),
                            InkWell(
                              onTap: ()
                              {
                                setState(() {
                                  TopicGetxController.to.Topic.value[index].selected==1?TopicGetxController.to.Topic.value[index].selected=0:TopicGetxController.to.Topic.value[index].selected=1;
                                  TopicGetxController.to.updateContact(TopicGetxController.to.Topic.value[index]);
                                  });
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 12.w),
                                height: 40.h,
                                width: 40.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color:TopicGetxController.to.Topic.value[index].selected==1?MainColor:Colors.white,

                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.0, 1.0), //(x,y)
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                ),
                                child: TopicGetxController.to.Topic.value[index].selected==1?Icon(Icons.check,color: Colors.black,):Icon(Icons.add,color: Colors.black,),
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
      })
    );
  }
}

import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/get/topic_getx_controller.dart';
import 'package:best_book_app/models/topics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InterestTopic extends StatefulWidget {
  const InterestTopic({Key? key}) : super(key: key);

  @override
  _InterestTopicState createState() => _InterestTopicState();
}

class _InterestTopicState extends State<InterestTopic> {
  List<Topics> basicTopic=[];
  List<Topics> yourInterestsTopic=[];
  List<Topics> suggestionTopic=[];
  void getDataTopic()
  {
    yourInterestsTopic.clear();
    suggestionTopic.clear();
    for(int i=0;i<basicTopic.length;i++){
      if(basicTopic[i].selected==1)
      {
        yourInterestsTopic.add(basicTopic[i]);
      }
      else{
        suggestionTopic.add(basicTopic[i]);
      }
    }
  }
  @override
  void initState() {
    basicTopic=TopicGetxController.to.Topic.value;
    getDataTopic();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 32.h,),
        // TextField(
        //   decoration: InputDecoration(
        //       hintText: "Search author",
        //       enabledBorder: OutlineInputBorder(
        //         borderSide: BorderSide(
        //           width: .3.w,
        //           color: Colors.grey,
        //         ),
        //         borderRadius: BorderRadius.circular(10),
        //       )),
        // ),
        //   SizedBox(height: 32.h,),
        // Text("Following",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,color: Text1),),
        SizedBox(
          height: 450.h,
          child: ListView(
            children: [
              Text("Your Interests",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,color: Text1),),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: yourInterestsTopic.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                              height: 64.h,
                              width: 64.w,
                              child: Image.asset(yourInterestsTopic[index].image)),
                          Container(
                              margin: EdgeInsets.only(left: 24.w),
                              child: Text(
                                yourInterestsTopic[index].name,
                                style: TextStyle(color: Text1, fontSize: 14.sp),
                              )),
                          Spacer(),
                          InkWell(
                            onTap: (){
                              setState(() {
                                yourInterestsTopic[index].selected==1?yourInterestsTopic[index].selected=0:yourInterestsTopic[index].selected=1;
                                TopicGetxController.to.updateContact(yourInterestsTopic[index]);
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 12.w),
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color:yourInterestsTopic[index].selected==0?Colors.white:MainColor,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 6.0,
                                  ),
                                ],
                              ),
                              child: yourInterestsTopic[index].selected==0?Icon(Icons.add,color: Colors.black,):Icon(Icons.check,color: Colors.black,),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Divider(
                        height: 1,
                        color: Bordercolor,
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                    ],
                  );
                },
              ),
              Text("Suggestion",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,color: Text1),),
              SizedBox(height: 24.h,),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: suggestionTopic.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                              height: 64.h,
                              width: 64.w,
                              child: Image.asset(suggestionTopic[index].image)),
                          Container(
                              margin: EdgeInsets.only(left: 24.w),
                              child: Text(
                                suggestionTopic[index].name,
                                style: TextStyle(color: Text1, fontSize: 14.sp),
                              )),
                          Spacer(),
                          InkWell(
                            onTap: (){
                              setState(() {
                                suggestionTopic[index].selected==1?suggestionTopic[index].selected=0:suggestionTopic[index].selected=1;
                                TopicGetxController.to.updateContact(suggestionTopic[index]);
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 12.w),
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color:suggestionTopic[index].selected==0?Colors.white:MainColor,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 6.0,
                                  ),
                                ],
                              ),
                              child: suggestionTopic[index].selected==0?Icon(Icons.add,color: Colors.black,):Icon(Icons.check,color: Colors.black,),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Divider(
                        height: 1,
                        color: Bordercolor,
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );

  }
}

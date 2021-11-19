import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/get/author_getx_controller.dart';
import 'package:best_book_app/get/topic_getx_controller.dart';
import 'package:best_book_app/models/authors.dart';
import 'package:best_book_app/models/topics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InterestAuthor extends StatefulWidget {
  const InterestAuthor({Key? key}) : super(key: key);

  @override
  _InterestAuthorState createState() => _InterestAuthorState();
}

class _InterestAuthorState extends State<InterestAuthor> {
  List<Authors> basicAuthor=[];
  List<Authors> followingAuthor=[];
  List<Authors> suggestionAuthor=[];
  ////

  void getDataAuthor()
  {
    followingAuthor.clear();
    suggestionAuthor.clear();
    for(int i=0;i<basicAuthor.length;i++)
    {
      if(basicAuthor[i].selected==1)
      {
        followingAuthor.add(basicAuthor[i]);
      }
      else{
        suggestionAuthor.add(basicAuthor[i]);
      }
    }
  }

  @override
  void initState() {
    basicAuthor=AuthorGetxController.to.authors.value;

    getDataAuthor();

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
              Text("Following",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,color: Text1),),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: followingAuthor.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                              height: 64.h,
                              width: 64.w,
                              child: Image.asset(followingAuthor[index].image)),
                          Container(margin: EdgeInsets.only(left: 24.w),child: Text(followingAuthor[index].name,style: TextStyle(color:Text1,fontSize: 14.sp),)),
                          Spacer(),
                          InkWell(
                            onTap: (){
                              setState(() {
                                followingAuthor[index].selected==1?followingAuthor[index].selected=0:followingAuthor[index].selected=1;
                                AuthorGetxController.to.updateContact(followingAuthor[index]);
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 12.w),
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color:followingAuthor[index].selected==0?Colors.white:MainColor,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 6.0,
                                  ),
                                ],
                              ),
                              child: followingAuthor[index].selected==0?Icon(Icons.add,color: Colors.black,):Icon(Icons.check,color: Colors.black,),
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
              Text("Suggestion",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,color: Text1),),
              SizedBox(height: 24.h,),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: suggestionAuthor.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                              height: 64.h,
                              width: 64.w,
                              child: Image.asset(suggestionAuthor[index].image)),
                          Container(margin: EdgeInsets.only(left: 24.w),child: Text(suggestionAuthor[index].name,style: TextStyle(color:Text1,fontSize: 14.sp),)),
                          Spacer(),
                          InkWell(
                            onTap: (){
                              setState(() {
                                suggestionAuthor[index].selected==1?suggestionAuthor[index].selected=0:suggestionAuthor[index].selected=1;
                                AuthorGetxController.to.updateContact(suggestionAuthor[index]);
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 12.w),
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color:suggestionAuthor[index].selected==0?Colors.white:MainColor,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 6.0,
                                  ),
                                ],
                              ),
                              child: suggestionAuthor[index].selected==0?Icon(Icons.add,color: Colors.black,):Icon(Icons.check,color: Colors.black,),
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
            ],
          ),
        ),
      ],
    );
  }
}

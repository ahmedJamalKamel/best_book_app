import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/get/book_all_getx_controller.dart';
import 'package:best_book_app/get/book_greatest_getx_controller.dart';
import 'package:best_book_app/models/book_all.dart';
import 'package:best_book_app/models/book_greatest.dart';
import 'package:best_book_app/page/book_detail/book_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class MainBooks extends StatefulWidget {
   MainBooks({
    required this.title,required this.subtitle,required this.cont,this.showMor=false
  });
 late String title;
 late String subtitle;
 //late String imageAssest;
 late int cont;
 late bool showMor;


  @override
  State<MainBooks> createState() => _MainBooksState();
}

class _MainBooksState extends State<MainBooks> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
           widget.showMor?InkWell(
              onTap: (){

                Navigator.of(context).pushNamed("/book_all_screens");

              },
              child: Text(
                "More >",
                style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold,color: Colors.blue),
              ),
            ):Text(""),
          ],
        ),
        Container(
            margin: EdgeInsets.only(top: 8.h),
            child: Text(
              widget.subtitle,
              style: TextStyle(fontSize: 14.sp),
            )),
        SizedBox(
          height: 40.h,
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: BookAllGetxController.to.bookAll.value.length>widget.cont?widget.cont:BookAllGetxController.to.bookAll.value.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: ()
              {
                BookAll pass=BookAllGetxController.to.bookAll.value[index];
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookDetail(m: pass,),
                  ),
                );
              },
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 98.h,
                          width: 64.w,
                          child: Image.asset(BookAllGetxController.to.bookAll.value[index].image)),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 13.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                BookAllGetxController.to.bookAll.value[index].name,
                                style: TextStyle(
                                    color: Text1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                BookAllGetxController.to.bookAll.value[index].nameTopic,
                                style: TextStyle(color: Text2, fontSize: 14),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                BookAllGetxController.to.bookAll.value[index].nameAuthor,
                                style: TextStyle(color: Text1, fontSize: 14),
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
              ),
            );
          },
        ),

      ],
    );
  }
}
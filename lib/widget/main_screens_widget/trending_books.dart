import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/models/book_all.dart';
import 'package:best_book_app/page/book_detail/book_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Trending_books extends StatefulWidget {
   Trending_books({
    required this.title,required this.subtitle,required this.cont,this.showMor=false,required this.grateBook,this.pading=24
  });
 late String title;
 late String subtitle;
 //late String imageAssest;
 late int cont;
 late bool showMor;
 late  List<BookAll>grateBook=[];
  int pading;
  @override
  State<Trending_books> createState() => _Trending_booksState();
}

class _Trending_booksState extends State<Trending_books> {
  // List<BookAll>grateBook=[];
  // List<BookAll>basicGrateBook=[];
  //
  // void dataGrate()
  // {
  //   grateBook.clear();
  //   for(int i=0;i<basicGrateBook.length;i++)
  //   {
  //     if(basicGrateBook[i].grate)
  //     {
  //       grateBook.add(basicGrateBook[i]);
  //     }
  //   }
  // }
  @override
  void initState() {
    // basicGrateBook=BookGreatestGetxController.to.bookgreat.value;
    // dataGrate();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: widget.pading.w, vertical: 24.h),
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

                Navigator.of(context).pushNamed("/book_greatest_screens");

              },
              child: Text(
                AppLocalizations.of(context)!.more+"  >",
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
          itemCount: widget.cont,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: ()
              {
                BookAll pass=widget.grateBook[index];
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
                          child: Image.asset(widget.grateBook[index].image)),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left:13.w,right:13.w ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.grateBook[index].name,
                                style: TextStyle(
                                    color: Text1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                widget.grateBook[index].nameTopic,
                                style: TextStyle(color: Text2, fontSize: 14),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                widget.grateBook[index].nameAuthor,
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
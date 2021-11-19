import 'package:best_book_app/get/book_all_getx_controller.dart';
import 'package:best_book_app/get/book_greatest_getx_controller.dart';
import 'package:best_book_app/models/book_all.dart';
import 'package:best_book_app/widget/main_screens_widget/trending_books.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class BookGreatestALL extends StatefulWidget {
  const BookGreatestALL({Key? key}) : super(key: key);

  @override
  _BookGreatestALLState createState() => _BookGreatestALLState();
}

class _BookGreatestALLState extends State<BookGreatestALL> {
  List<BookAll>grateBook=[];
  List<BookAll>basicGrateBook=[];
  /////
  int contMainBook = 5;
/////

  void dataGrate()
  {
    grateBook.clear();
    for(int i=0;i<basicGrateBook.length;i++)
    {
      if(basicGrateBook[i].grate==1)
      {
        grateBook.add(basicGrateBook[i]);
      }
    }
  }
  @override
  void initState() {
    basicGrateBook=BookAllGetxController.to.bookAll.value;
    dataGrate();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 54.h, left: 24.w),
        child: ListView(
          children: [
            IconButton(
              alignment: AlignmentDirectional.topStart,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios)),
            // SizedBox(
            //   height: 10.h,
            // ),
            Trending_books(
              grateBook: basicGrateBook,
                title: AppLocalizations.of(context)!.greatestbooks,
                subtitle: AppLocalizations.of(context)!.greatestbookssub,
                cont: BookAllGetxController.to.bookAll.value.length,
                //showMor: true,
               ),
          ],
        ),
      ),
    );
  }
}

import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/get/book_all_getx_controller.dart';
import 'package:best_book_app/get/book_greatest_getx_controller.dart';
import 'package:best_book_app/models/book_all.dart';
import 'package:best_book_app/page/book_detail/book_detail_screen.dart';
import 'package:best_book_app/widget/main_item/item_book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TrendingScreen extends StatefulWidget {
  const TrendingScreen({Key? key}) : super(key: key);

  @override
  _TrendingScreenState createState() => _TrendingScreenState();
}

class _TrendingScreenState extends State<TrendingScreen> {
  List<BookAll>grateBook=[];
  List<BookAll>_list=[];

  void dataGrate()
  {
    grateBook.clear();
    for(int i=0;i<_list.length;i++)
    {
      if(_list[i].grate==1)
      {
        grateBook.add(_list[i]);
      }
    }
  }
  @override
  void initState() {
    _list=BookAllGetxController.to.bookAll.value;
    dataGrate();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        margin: EdgeInsets.only(top: 56.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.trendings,
              style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              AppLocalizations.of(context)!.trendingssub,
              style: TextStyle(fontSize: 14.sp, color: Text2),
            ),
            SizedBox(
              height: 29.h,
            ),
            Container(
              height: 539.h,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: grateBook.length,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        BookAll pass=grateBook[index];
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookDetail(m: pass,),
                          ),
                        );
                      },
                      child: ItemBook(
                        bookAll: grateBook[index],
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/get/book_all_getx_controller.dart';
import 'package:best_book_app/models/book_all.dart';
import 'package:best_book_app/page/book_detail/book_detail_screen.dart';
import 'package:best_book_app/widget/main_item/item_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SaveScreen extends StatefulWidget {
  const SaveScreen({Key? key}) : super(key: key);

  @override
  _SaveScreenState createState() => _SaveScreenState();
}

class _SaveScreenState extends State<SaveScreen> {
  List<BookAll> baiceBook = [];
  List<BookAll> favoretBook = [];

  void getdata() {
    favoretBook.clear();
    for (int i = 0; i < baiceBook.length; i++) {
      if (baiceBook[i].favourite == 1) {
        favoretBook.add(baiceBook[i]);
      }
    }
    booknum=favoretBook.length;
  }

  @override
  void initState() {
    baiceBook = BookAllGetxController.to.bookAll.value;
    getdata();
    // TODO: implement initState
    super.initState();
  }
  int booknum=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        margin: EdgeInsets.only(top: 56.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.mycollections,
              style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              AppLocalizations.of(context)!.mycollectionssub,
              style: TextStyle(fontSize: 14.sp, color: Text2),
            ),
            SizedBox(
              height: 29.h,
            ),
            ListTile(
              title: Text(
                AppLocalizations.of(context)!.myfavourite,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                    color: Colors.black),
              ),
              subtitle: Text(
                booknum.toString() +""+AppLocalizations.of(context)!.books,
                style: TextStyle(fontSize: 12.sp),
              ),
            ),
            Container(
              height: 480.h,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: favoretBook.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      BookAll pass=favoretBook[index];
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookDetail(m: pass,),
                        ),
                      );
                    },
                    child: Dismissible(
                      background: const Align(alignment: AlignmentDirectional.centerEnd,child: Icon(Icons.delete,color: Colors.red,)),
                      key:  UniqueKey(),
                      child: ItemBook(bookAll: favoretBook[index]),
                      onDismissed: (direction) {
                        favoretBook[index].favourite=0;
                        BookAllGetxController.to.updateContact(favoretBook[index]);
                        setState(() {
                          getdata();
                        });
                      },

                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 24.h,
        ),
        Divider(
          color: Bordercolor,
          height: 1.h,
        ),
        SizedBox(
          height: 24.h,
        ),
        ListTile(
          title: Text(
            "UDG",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
                color: Colors.black),
          ),
          subtitle: Text(
            "6 books",
            style: TextStyle(fontSize: 12.sp),
          ),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          height: 98.h,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) {
              return Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  margin: EdgeInsets.only(right: 24.w),
                  child: Image.asset("image/imageMoreBook.png"));
            },
          ),
        ),
        SizedBox(
          height: 24.h,
        ),
        Divider(
          color: Bordercolor,
          height: 1.h,
        ),
        ListTile(
          title: Text(
            AppLocalizations.of(context)!.horror,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
                color: Colors.black),
          ),
          subtitle: Text(
            "6 books",
            style: TextStyle(fontSize: 12.sp),
          ),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          height: 98.h,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) {
              return Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  margin: EdgeInsets.only(right: 24.w),
                  child: Image.asset("image/imageMoreBook.png"));
            },
          ),
        ),
        SizedBox(
          height: 24.h,
        ),
        Divider(
          color: Bordercolor,
          height: 1.h,
        ),
      ],
    );
  }
}

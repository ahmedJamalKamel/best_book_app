import 'package:best_book_app/models/book_all.dart';
import 'package:best_book_app/page/book_detail/book_detail_screen.dart';
import 'package:best_book_app/widget/main_item/item_book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthorBookTap extends StatefulWidget {
  AuthorBookTap({Key? key, required this.authorBook}) : super(key: key);
  List<BookAll> authorBook;

  @override
  _AuthorBookTapState createState() => _AuthorBookTapState();
}

class _AuthorBookTapState extends State<AuthorBookTap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
        shrinkWrap: true,
        itemCount: widget.authorBook.length,
        itemBuilder: (context, index) {
          return InkWell(onTap: () {
            BookAll pass = widget.authorBook[index];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookDetail(m: pass,),
              ),
            );
          },child: ItemBook(bookAll:widget.authorBook[index],));
        },
      ),
    );
  }
}

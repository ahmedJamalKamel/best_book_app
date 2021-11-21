import 'package:best_book_app/get/book_all_getx_controller.dart';
import 'package:best_book_app/models/book_all.dart';
import 'package:best_book_app/page/book_detail/book_detail_screen.dart';
import 'package:best_book_app/widget/main_item/item_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SearchBookScreen extends StatefulWidget {
  const SearchBookScreen({Key? key}) : super(key: key);

  @override
  _SearchBookScreenState createState() => _SearchBookScreenState();
}

class _SearchBookScreenState extends State<SearchBookScreen> {
  late TextEditingController _textEditingController;
   List<BookAll> baecBook=[];
   List<BookAll> fulterBook=[];
  String text="";
  @override
  void initState() {
    _textEditingController = TextEditingController();
     baecBook=BookAllGetxController.to.bookAll.value;
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 60.h),
                child: Row(
                  children: [
                    Container(
                      alignment: AlignmentDirectional.topStart,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios)),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.w),
                      child: Text(
                        AppLocalizations.of(context)!.search,
                        style: TextStyle(
                            fontSize: 32.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              TextField(
                controller: _textEditingController,
                onChanged: (value) {
                  setState(() {
                    text=_textEditingController.text;
                    fulterBook.clear();
                    fulterBook.addAll(baecBook.where((element) => element.name.contains(text)));
                  });
                },
                decoration: const InputDecoration(
                  icon: Icon(Icons.search)
                ),
              ),
            SizedBox(
              height: 620.h,
              child: ListView.builder(
               // shrinkWrap: true,
                  itemCount: fulterBook.length,
                  itemBuilder: (context, index) {
                    return InkWell(onTap: (){
                      BookAll pass=fulterBook[index];
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookDetail(m: pass,),
                        ),
                      );
                    },child: ItemBook(bookAll: fulterBook[index]));

                  },
                ),
            )
            ],
          ),
        ),
      ),
    );
  }
}

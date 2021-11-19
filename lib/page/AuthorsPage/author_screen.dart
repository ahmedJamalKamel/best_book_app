import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/models/authors.dart';
import 'package:best_book_app/page/AuthorsPage/AutohrTap/auther_book_tap.dart';
import 'package:best_book_app/page/book_detail/TabScreens/information_screen.dart';
import 'package:best_book_app/page/book_detail/TabScreens/overview_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'AutohrTap/author_about_tap.dart';
class AuthorScreen extends StatefulWidget {
   AuthorScreen({Key? key,required this.authors}) : super(key: key);
   Authors authors;
  @override
  _AuthorScreenState createState() => _AuthorScreenState();
}

class _AuthorScreenState extends State<AuthorScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: AlignmentDirectional.topStart,
            margin: EdgeInsets.only(top: 56.h, left: 24.w),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios)),
          ),
          Container(
              margin: EdgeInsets.only(top: 60.h),
              child: CircleAvatar(
                radius: 40.w,
                backgroundImage: AssetImage(widget.authors.image),
              ),),
          SizedBox(height: 12.h,),
          Text(widget.authors.name,style: TextStyle(fontSize: 16.sp,color: Colors.black,fontWeight: FontWeight.bold),),
          SizedBox(height: 4.h,),
          Text("Book number : "+widget.authors.numberBook,style: TextStyle(fontSize: 14.sp,color: Text2),),
          SizedBox(height: 40.h,),
          TabBar(
              onTap: (int selectedTabIndex) {},
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              indicatorColor: MainColor,
              // labelStyle: TextStyle(color: Colors.black),
              labelColor: Colors.black,
              controller: _tabController,
              unselectedLabelColor: Text3,
              tabs: [
                Tab(
                  text: AppLocalizations.of(context)!.books,
                ),
                Tab(
                  text: AppLocalizations.of(context)!.about,
                ),
              ]),
          SizedBox(height: 16.h,),
          Container(
            height: 417.h,
            child: TabBarView(
                controller: _tabController,
                children: [AuthorBookTap(), AuthorAboutTap(authors: widget.authors,)]),
          )
        ],
      ),
    );
  }
}

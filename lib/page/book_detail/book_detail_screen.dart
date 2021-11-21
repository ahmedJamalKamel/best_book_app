import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/get/book_all_getx_controller.dart';
import 'package:best_book_app/models/book_all.dart';

import 'package:best_book_app/page/book_detail/TabScreens/information_screen.dart';
import 'package:best_book_app/page/book_detail/TabScreens/overview_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BookDetail extends StatefulWidget {
   BookDetail({Key? key,required this.m}) : super(key: key);
   BookAll m;
  @override
  _BookDetailState createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail>
    with SingleTickerProviderStateMixin {
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
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                    height: 242.h,
                    width: 375.w,
                    child: Image.asset(
                      widget.m.image,
                      fit: BoxFit.cover,
                    )),
                Container(
                  height: 242.h,
                  width: 375.w,
                  color: Colors.grey.withOpacity(.9),
                ),
                Container(
                  margin: EdgeInsets.only(top: 106.h, left: 24.w),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 166.h,
                        width: 108.w,
                        child: Image.asset(widget.m.image),
                      ),
                      Expanded(
                        child: Container(
                          height: 167.h,
                          margin: EdgeInsets.only(left: 24.w,right: 24.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.m.name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(widget.m.nameTopic,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14.sp)),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(widget.m.nameAuthor,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14.sp)),
                              Align(
                                alignment: AlignmentDirectional.bottomEnd,
                                child: InkWell(
                                  onTap: ()
                                  {
                                    setState(() {
                                      widget.m.favourite==1?widget.m.favourite=0:widget.m.favourite=1;
                                      BookAllGetxController.to.updateContact(widget.m);
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(right: 12.w),
                                    height: 40.h,
                                    width: 40.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(0.0, 1.0), //(x,y)
                                          blurRadius: 6.0,
                                        ),
                                      ],
                                    ),
                                    child:widget.m.favourite==1?const Icon(Icons.favorite,color: Colors.red,): const Icon(Icons.favorite_outline_sharp),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.zero,
                    margin: EdgeInsets.only(top: 56.h, left: 18.w),
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 35.h,
            ),
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
                    text: AppLocalizations.of(context)!.overview,
                  ),
                  Tab(
                    text: AppLocalizations.of(context)!.information,
                  ),
                ]),
            SizedBox(
              height: 458.h,
              child: TabBarView(
                  controller: _tabController,
                  children: [OverviewScreen(dis: widget.m.description,), InformationScreens(m: widget.m,)]),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/page/CustomizeInterestsPage/InterestTap/interest_author.dart';
import 'package:best_book_app/page/CustomizeInterestsPage/InterestTap/interest_topic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class CustomInterestScreen extends StatefulWidget {
  const CustomInterestScreen({Key? key}) : super(key: key);

  @override
  _CustomInterestScreenState createState() => _CustomInterestScreenState();
}

class _CustomInterestScreenState extends State<CustomInterestScreen>with SingleTickerProviderStateMixin {
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 56.h,
            ),
            IconButton(onPressed: () {Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios)),
            SizedBox(
              height: 30.h,
            ),
            Text("Customize interests",style: TextStyle(fontSize: 30.sp,fontWeight:FontWeight.bold ),),
            SizedBox(
              height: 12.h,
            ),
            Text("Select your favourite topics, follow authors and they will be displayed at your homepage",style: TextStyle(fontSize: 13.sp,color: Text2),),
            SizedBox(
              height: 50.h,
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
                    text: AppLocalizations.of(context)!.topic,
                  ),
                  Tab(
                    text: AppLocalizations.of(context)!.authors,
                  ),
                ]),
            Container(
              height: 500.h,
              child: TabBarView(
                controller: _tabController,
                children:  [InterestTopic(),InterestAuthor()]),)
          ],
        ),
      ),
    );
  }
}

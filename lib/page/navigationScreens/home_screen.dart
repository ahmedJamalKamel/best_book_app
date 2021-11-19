import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/get/author_getx_controller.dart';
import 'package:best_book_app/get/book_all_getx_controller.dart';
import 'package:best_book_app/get/book_greatest_getx_controller.dart';
import 'package:best_book_app/get/topic_getx_controller.dart';
import 'package:best_book_app/models/authors.dart';
import 'package:best_book_app/models/book_all.dart';
import 'package:best_book_app/models/topics.dart';
import 'package:best_book_app/page/AllAuthor/all_author.dart';
import 'package:best_book_app/page/book_detail/book_detail_screen.dart';
import 'package:best_book_app/widget/app_bar_custoum.dart';
import 'package:best_book_app/widget/main_screens_widget/author_for_you.dart';
import 'package:best_book_app/widget/main_screens_widget/book_you_my_love.dart';
import 'package:best_book_app/widget/main_screens_widget/main_book_books.dart';
import 'package:best_book_app/widget/main_screens_widget/trending_books.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Authors> selectedAutors = [];
  List<Authors> dasicAuther = [];
  List<BookAll> bookFromTopicSelected = [];
  List<BookAll> dasicbook = [];
  List<Topics> selectedTopic=[];
  List<Topics> baicSelectedTopic=[];
////////
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
  ////
  void getDataselectedAutors() {
    selectedAutors.clear();
    for (int i = 0; i < dasicAuther.length; i++) {
      if (dasicAuther[i].selected==1) {
        selectedAutors.add(dasicAuther[i]);
      }
    }
  }

  void getDatabookFromTopicSelected() {
    bookFromTopicSelected.clear();
    for (int i = 0; i < baicSelectedTopic.length; i++) {
      if(baicSelectedTopic[i].selected==1)
      {
        selectedTopic.add(baicSelectedTopic[i]);
      }
    }
    for(int i = 0; i < dasicbook.length; i++)
    {
      for(int j=0;j<selectedTopic.length;j++){
        if(dasicbook[i].nameTopic==selectedTopic[j].name)
        {
          bookFromTopicSelected.add(dasicbook[i]);
        }
      }
    }
  }

  @override
  void initState() {
    dasicAuther = AuthorGetxController.to.authors.value;
    dasicbook = BookAllGetxController.to.bookAll.value;
    baicSelectedTopic=TopicGetxController.to.Topic.value;
    getDataselectedAutors();
    getDatabookFromTopicSelected();
    ////
    basicGrateBook=BookAllGetxController.to.bookAll.value;
    dataGrate();
    print("ahmed"+BookAllGetxController.to.loading.value.toString());
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
      !BookAllGetxController.to.loading.value?ListView(
      children: [
        Container(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
            child: InkWell(onTap: () {

            }, child: const AppBarCustoum())),
        Trending_books(
          title: AppLocalizations.of(context)!.greatestbooks,
          subtitle: AppLocalizations.of(context)!.greatestbookssub,
          cont: grateBook.length>5?5:grateBook.length,
          showMor: true,
          grateBook: grateBook,
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
            color: Text1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.youmaylove,
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    InkWell(onTap: () {
                      Navigator.of(context).pushNamed("/book_all_screens");
                    },
                      child: Text("More >",style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold,color: Colors.blue),),)
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(top: 8.h),
                    child: Text(
                      AppLocalizations.of(context)!.youmaylovesuptitle,
                      style: TextStyle(fontSize: 14.sp, color: Text3),
                    )),
                SizedBox(
                  height: 270.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: bookFromTopicSelected.isNotEmpty?bookFromTopicSelected.length:0,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                          BookAll pass=bookFromTopicSelected[index];
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BookDetail(m: pass,),
                            ),
                          );
                        },
                        child: BookYouMyLove(
                          image: bookFromTopicSelected[index]
                              .image,
                          authorname: bookFromTopicSelected[index].nameAuthor,
                          nametopic: bookFromTopicSelected[index]
                              .nameTopic,),
                      );
                    },
                  ),
                )
              ],
            )),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.authorsforyou,
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Text1),
                  ),
                  InkWell(onTap: () {
                    Navigator.of(context).pushNamed("/all_author");
                  },
                    child: Text("More >",style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold,color: Colors.blue),),)
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: 8.h),
                  child: Text(
                    AppLocalizations.of(context)!.authorsforyousuptitle,
                    style: TextStyle(fontSize: 14.sp, color: Text2),
                  )),
              SizedBox(
                height: 208.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: selectedAutors.isNotEmpty ? selectedAutors
                      .length : 0,
                  itemBuilder: (context, index) {
                    return AuthorForYou(
                      image: selectedAutors[index].image,
                      name: selectedAutors[index].name,
                      topicname: selectedAutors[index].numberBook,);
                  },
                ),
              )
            ],
          ),
        ),
        MainBooks(
          title: AppLocalizations.of(context)!.morebooksforyou,
          subtitle: AppLocalizations.of(context)!.morebooksforyousuptitle,
          cont: contMainBook,
          showMor: true,
        ),
        Container(
          margin: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
          child: ElevatedButton(
            onPressed: () {
              if (BookAllGetxController.to.bookAll.value.length >
                  contMainBook) {
                int a = contMainBook + 5;
                if (BookAllGetxController.to.bookAll.value.length >= a) {
                  setState(() {
                    contMainBook = a;
                  });
                }
              }
            },
            child: Text(AppLocalizations.of(context)!.loadmore,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),),
            style: ElevatedButton.styleFrom(
              primary: MainColor,
              fixedSize: Size(double.infinity, 52.h),
            ),
          ),
        )
      ],
    ):Center(child: CircularProgressIndicator()),

    );
  }
}





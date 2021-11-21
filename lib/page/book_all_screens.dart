import 'package:best_book_app/get/book_all_getx_controller.dart';
import 'package:best_book_app/get/topic_getx_controller.dart';
import 'package:best_book_app/models/book_all.dart';
import 'package:best_book_app/widget/main_item/item_book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'book_detail/book_detail_screen.dart';

class BookALLScreens extends StatefulWidget {
  const BookALLScreens({Key? key}) : super(key: key);

  @override
  _BookALLScreensState createState() => _BookALLScreensState();
}

class _BookALLScreensState extends State<BookALLScreens> {
  List<BookAll> selected=[];
  List<BookAll> bacic=[];
  List<BookAll> fultter=[];
  bool actionSel=false;
  bool dramaSel=false;
  bool classicsSel=false;
  bool humorSel=false;
  bool poetrySel=false;
  bool wordSel=false;
  List<bool> _list=[];

  @override
  void initState() {
    _list.add(actionSel);
    _list.add(dramaSel);
    _list.add(classicsSel);
    _list.add(humorSel);
    _list.add(poetrySel);
    _list.add(wordSel);
    ////
    selected=BookAllGetxController.to.bookAll.value;
    bacic=BookAllGetxController.to.bookAll.value;

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 54.h),
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 24.w),
                  child: IconButton(
                      alignment: AlignmentDirectional.topStart,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios)),
                ),
                Container(margin: EdgeInsets.only(left: 24.w,bottom: 5.h),child: Text( AppLocalizations.of(context)!.allbook,style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold),),)
              ],
            ),
            SizedBox(height: 10.h,),
            SizedBox(
              height: 75.h,
              child: ListView.builder(
                itemCount: TopicGetxController.to.Topic.value.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: ()
                    {
                      setState(() {
                        for(int i=0;i<_list.length;i++)
                        {
                          _list[i]=false;
                        }
                        _list[index]=true;
                        fultter.clear();
                      for(int j=0;j<bacic.length;j++)
                      {
                        if(bacic[j].nameTopic==TopicGetxController.to.Topic.value[index].name)
                        {
                          fultter.add(bacic[j]);
                        }
                      }
                      selected=fultter;
                      });
                    },
                    child: Container(

                      margin: EdgeInsets.only(left: 5.w,right: 5.w),
                      padding: EdgeInsets.all(5.w),
                      decoration: BoxDecoration(
                          color: !_list[index]?Colors.white60:Colors.yellow,
                        borderRadius: BorderRadius.circular(10.w),
                        border: Border.all(width: 2,color: Colors.grey)
                      ),
                      width: 150.w,
                      child: Row(
                        children: [
                          Expanded(child: Text(TopicGetxController.to.Topic.value[index].name,textAlign: TextAlign.end,)),
                          SizedBox(width: 10.w,),
                          CircleAvatar(radius: 25,backgroundImage: AssetImage(TopicGetxController.to.Topic.value[index].image),)
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 25.h),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount:selected.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: ()
                  {
                    BookAll pass=selected[index];
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookDetail(m: pass,),
                      ),
                    );
                  },
                  child: ItemBook(bookAll: selected[index],)
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

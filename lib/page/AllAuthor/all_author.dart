
import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/get/author_getx_controller.dart';
import 'package:best_book_app/models/authors.dart';
import 'package:best_book_app/page/AuthorsPage/author_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class AllAuthor extends StatefulWidget {
  const AllAuthor({Key? key}) : super(key: key);

  @override
  _AllAuthorState createState() => _AllAuthorState();
}

class _AllAuthorState extends State<AllAuthor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        margin: EdgeInsets.only(top: 60.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                Container(margin: EdgeInsets.only(left: 24.w,bottom: 5.h),child: Text( AppLocalizations.of(context)!.allauthor,style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold),),)
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: AuthorGetxController.to.authors.value.length != 0
                  ? AuthorGetxController.to.authors.value.length
                  : 0,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Authors a=AuthorGetxController.to.authors.value[index];
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AuthorScreen(authors: a,),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Image.file(File(AuthorGetxController
                          //     .to.authors.value[index].image))
                          CircleAvatar(
                            radius: 35.w,
                            backgroundImage: AssetImage(AuthorGetxController
                                .to.authors.value[index].image),
                          ),
                          Expanded(
                            child: ListTile(
                              title: Container(
                              //    margin: EdgeInsets.only(left: 24.w),
                                  child: Text(
                                    AuthorGetxController
                                        .to.authors.value[index].name,
                                    style: TextStyle(
                                        color: Text1, fontSize: 14.sp),
                                    textAlign: TextAlign.start,
                                  )),
                              subtitle: Container(
                                margin: EdgeInsets.only(right: 12.w,top: 5.h),
                                height: 40.h,
                                child:  Text(
                                  "book Number: "+AuthorGetxController
                                      .to.authors.value[index].numberBook,
                                  //textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Divider(
                        height: 1,
                        color: Bordercolor,
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

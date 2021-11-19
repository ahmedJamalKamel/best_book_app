
import 'package:best_book_app/Theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class AuthorBookTap extends StatefulWidget {
  const AuthorBookTap({Key? key}) : super(key: key);

  @override
  _AuthorBookTapState createState() => _AuthorBookTapState();
}

class _AuthorBookTapState extends State<AuthorBookTap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 20.h),
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 98.h,
                      width: 64.w,
                      child: Image.asset("image/imageMoreBook.png")),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Darius - The great is not okay",
                          style: TextStyle(
                              color: Text1,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Adventure",
                          style: TextStyle(color: Text2, fontSize: 14),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Adib Khorram",
                          style: TextStyle(color: Text1, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Icon(Icons.more_vert),
                  )
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Divider(
                height: 1.h,
                color: Bordercolor,
              ),
              SizedBox(
                height: 24.h,
              ),
            ],
          );
        },
      ),
    );
  }
}

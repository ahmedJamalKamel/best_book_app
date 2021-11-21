import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/get/language_getx_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Obx((){
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          margin: EdgeInsets.only(top: 56.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.account,
                style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 40.h,
              ),
              // InkWell(onTap: (){
              //   Navigator.of(context).pushNamed("/profile_screen");
              // },child: Text(AppLocalizations.of(context)!.myprofile,style: TextStyle(fontSize: 14.sp,color: Text1),)),
              InkWell(onTap: (){
                Navigator.of(context).pushNamed("/customize_interests_screen");
              },child: Text(AppLocalizations.of(context)!.customizeinterests,style: TextStyle(fontSize: 14.sp,color: Text1),)),
              SizedBox(
                height: 30.h,
              ),
              Divider(height: 1,color: Bordercolor,),
              SizedBox(
                height: 24.h,
              ),
              // Divider(height: 1,color: Bordercolor,),
              // SizedBox(
              //   height: 24.h,
              // ),
              // Text(AppLocalizations.of(context)!.historyreadinglist,style: TextStyle(fontSize: 14.sp,color: Text1),),
              // SizedBox(
              //   height: 24.h,
              // ),
              // Divider(height: 1,color: Bordercolor,),
              // SizedBox(
              //   height: 24.h,
              // ),
              InkWell(onTap: (){
                Navigator.of(context).pushNamed("/about_screen");
              },child: Text(AppLocalizations.of(context)!.support,style: TextStyle(fontSize: 14.sp,color: Text1),)),
              SizedBox(
                height: 30.h,
              ),
              Divider(height: 1,color: Bordercolor,),
              SizedBox(
                height: 24.h,
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    LanguageGetxController.to.changeLanguage();
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppLocalizations.of(context)!.languages,style: TextStyle(fontSize: 14.sp,color: Text1),),
                    Text(LanguageGetxController.to.language.value),
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Divider(height: 1,color: Bordercolor,),
              SizedBox(
                height: 24.h,
              ),
              SizedBox(
                height: 49.h,
              ),

            ],
          ),
        );})
      );

  }
}

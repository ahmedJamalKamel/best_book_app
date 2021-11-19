import 'package:best_book_app/Theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              height: 12.h,
            ),
            ListTile(
              leading: CircleAvatar(radius: 24,backgroundImage: AssetImage("image/account.png"),),
              title: Text("Jennie Jolia",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),),
              subtitle: Text("Setting my account",style: TextStyle(color: Text2,fontSize: 14.sp),),
            ),
            SizedBox(
              height: 40.h,
            ),
            Divider(height: 1,color: Bordercolor,),
            SizedBox(
              height: 24.h,
            ),
            InkWell(onTap: (){
              Navigator.of(context).pushNamed("/profile_screen");
            },child: Text(AppLocalizations.of(context)!.myprofile,style: TextStyle(fontSize: 14.sp,color: Text1),)),
            SizedBox(
              height: 24.h,
            ),
            Divider(height: 1,color: Bordercolor,),
            SizedBox(
              height: 24.h,
            ),
            InkWell(onTap: (){
              Navigator.of(context).pushNamed("/customize_interests_screen");
            },child: Text(AppLocalizations.of(context)!.customizeinterests,style: TextStyle(fontSize: 14.sp,color: Text1),)),
            SizedBox(
              height: 24.h,
            ),
            Divider(height: 1,color: Bordercolor,),
            SizedBox(
              height: 24.h,
            ),
            Text(AppLocalizations.of(context)!.historyreadinglist,style: TextStyle(fontSize: 14.sp,color: Text1),),
            SizedBox(
              height: 24.h,
            ),
            Divider(height: 1,color: Bordercolor,),
            SizedBox(
              height: 24.h,
            ),
            Text(AppLocalizations.of(context)!.support,style: TextStyle(fontSize: 14.sp,color: Text1),),
            SizedBox(
              height: 24.h,
            ),
            Divider(height: 1,color: Bordercolor,),
            SizedBox(
              height: 24.h,
            ),
            Text(AppLocalizations.of(context)!.logout,style: TextStyle(fontSize: 14.sp,color: Text1),),
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
      ),
    );
  }
}

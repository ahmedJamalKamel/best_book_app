import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/prefs/shared_pref_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:image_picker/image_picker.dart';
import 'TapScreenProfile/general_tap.dart';
import 'TapScreenProfile/membership_tap.dart';
import 'TapScreenProfile/security_tap.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>  with SingleTickerProviderStateMixin {
  late TabController _tabController;
  ImagePicker _imagePicker = ImagePicker();
  XFile? _pickedFile;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 1, vsync: this);
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: AlignmentDirectional.topStart,
              margin: EdgeInsets.only(top: 56.h, left: 24.w),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                margin: EdgeInsets.only(top: 60.h),
                child: CircleAvatar(
                  child: Align(alignment: AlignmentDirectional.bottomEnd,child: Icon(Icons.camera_alt_outlined,color: Colors.black,)),
                  radius: 40.w,
                  backgroundImage: const AssetImage("image/profileScreen.png"),
                ),),
            ),
            SizedBox(height: 12.h,),
            Text(SharedPrefController().name,style: TextStyle(fontSize: 16.sp,color: Colors.black,fontWeight: FontWeight.bold),),
            // SizedBox(height: 4.h,),
            // Text("Silver member",style: TextStyle(fontSize: 14.sp,color: Text2),),
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
                    text: AppLocalizations.of(context)!.general,
                  ),
                  // Tab(
                  //   text: AppLocalizations.of(context)!.membership,
                  // ),
                  // Tab(
                  //   text: AppLocalizations.of(context)!.security,
                  // ),
                ]),
            SizedBox(height: 16.h,),
            SizedBox(
              height: MediaQuery.of(context).size.height/2,
              child: TabBarView(
                  controller: _tabController,
                  children: const [GeneralTap(), /*MembershipTap(),SecurityTap()*/]),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _pickImage() async {
    XFile? imageFile = await _imagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);
    if (imageFile != null) {
      setState(() {
        _pickedFile = imageFile;
      });
    }
  }
}

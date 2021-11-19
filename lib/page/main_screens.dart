import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/page/navigationScreens/home_screen.dart';
import 'package:best_book_app/page/navigationScreens/save_screen.dart';
import 'package:best_book_app/page/navigationScreens/trendings_screen.dart';
import 'package:best_book_app/widget/app_bar_custoum.dart';
import 'package:best_book_app/widget/main_screens_widget/trending_books.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'navigationScreens/account_screen.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({Key? key}) : super(key: key);

  @override
  _MainScreensState createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _cuttentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: HexColor("#E5E5E5"),
      // appBar: AppBar(
      //
      //   backgroundColor: HexColor("#E5E5E5"),
      //   elevation: 0,
      //   title: Container(margin:EdgeInsets.only(left: 20),child: SvgPicture.asset("image/BookLover.svg")),
      // ),

      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _cuttentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: _cuttentIndex,
        selectedItemColor: MainColor,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset("icon/iconHome.svg"),
              label: AppLocalizations.of(context)!.home,
              activeIcon: SvgPicture.asset("icon/iconHomeActive.svg")),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("icon/fire.svg"),
            label: AppLocalizations.of(context)!.trending,
            activeIcon: SvgPicture.asset("icon/fireActive.svg"),
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("icon/iconSave.svg"),
              label: AppLocalizations.of(context)!.save,
              activeIcon: SvgPicture.asset("icon/iconSaveActive.svg")),
          // BottomNavigationBarItem(
          //     icon: const Icon(Icons.notifications_outlined),
          //     label: AppLocalizations.of(context)!.inbox,
          //     activeIcon: const Icon(Icons.notifications)),
          BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: AppLocalizations.of(context)!.account,
              activeIcon: const Icon(Icons.person)),
        ],
      ),
      body: _cuttentIndex == 0
          ? HomeScreen()
          : _cuttentIndex == 1
              ? TrendingScreen()
              : _cuttentIndex == 2
                  ? SaveScreen()
                  :AccountScreen(),
    );
  }
}

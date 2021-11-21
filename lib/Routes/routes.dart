
import 'package:best_book_app/page/About/adout_screen.dart';
import 'package:best_book_app/page/AllAuthor/all_author.dart';
import 'package:best_book_app/page/CustomizeInterestsPage/customize_interests_screen.dart';
import 'package:best_book_app/page/Search/search_book_screen.dart';
import 'package:best_book_app/page/book_all_screens.dart';
import 'package:best_book_app/page/book_greatest_screens.dart';
import 'package:best_book_app/page/chose_admin_user_screen.dart';
import 'package:best_book_app/page/introPage/congratulation_screen.dart';
import 'package:best_book_app/page/introPage/select_authors.dart';
import 'package:best_book_app/page/introPage/select_topics.dart';
import 'package:best_book_app/page/lanuch_screean.dart';
import 'package:best_book_app/page/main_screens.dart';
import 'package:flutter/material.dart';
 class PageRoutes {
   static const String launchScreen = '/launch_screen';
   static const String mainScreen = '/main_screen';
   static const String bookDetailScreen = '/book_detail_screen';
   static const String selectTopicsScreen = '/select_topics_screen';
   static const String selectAuthorScreen = '/select_author_screen';
   static const String congratulationScreen = '/congratulation_screen';
   static const String authorScreen = '/author_screen';
   static const String profileScreen = '/profile_screen';
   static const String customizeInterestsScreen = '/customize_interests_screen';
   static const String choseAdminOrUser = '/chose_admin_orUser';
  // static const String adminMainScreen = '/AdminMainScreen';
   static const String adminMainScreen = '/admin_main_screen';
   static const String createAuthor = '/create_author';
   static const String createTopic = '/create_topic';
   static const String createBookAll = '/create_book_all';
   static const String allAuthor= '/all_author';
   static const String bookGreatestScreens= '/book_greatest_screens';
   static const String loginScreen= '/login_screen';
   static const String authScreen= '/AuthScreen';
   static const String bookAllScreens= '/book_all_screens';
   static const String aboutScreen= '/about_screen';
   static const String searchBookScreen= '/search_book_screen';
  Map<String, WidgetBuilder> routes() {
    return {
      launchScreen: (context) => const LaunchScreen(),
      mainScreen : (context) => const MainScreens(),
    //  bookDetailScreen: (context) => BookDetail(),
      selectTopicsScreen: (context) => const SelectTopics(),
      selectAuthorScreen: (context) => const SelectAuthor(),
      congratulationScreen: (context) => const Congratulation(),
    //  authorScreen: (context) => AuthorScreen(),
      customizeInterestsScreen: (context) => const CustomInterestScreen(),
      choseAdminOrUser: (context) => const ChoseAdminOrUser(),
      allAuthor: (context) => const AllAuthor(),
      bookGreatestScreens: (context) => const BookGreatestALL(),
      bookAllScreens: (context) => const BookALLScreens(),
      aboutScreen: (context) => const AboutScreen(),
      searchBookScreen: (context) => const SearchBookScreen(),

    };
  }
 }


import 'package:best_book_app/page/Admin/CreateTaple/create_book_all.dart';
import 'package:best_book_app/page/Admin/admin_main_screen.dart';
import 'package:best_book_app/page/Admin/CreateTaple/create_author.dart';
import 'package:best_book_app/page/Admin/CreateTaple/create_topic.dart';
import 'package:best_book_app/page/AllAuthor/all_author.dart';
import 'package:best_book_app/page/Aut/auth_screen.dart';
import 'package:best_book_app/page/Aut/login_screen.dart';
import 'package:best_book_app/page/AuthorsPage/author_screen.dart';
import 'package:best_book_app/page/CustomizeInterestsPage/customize_interests_screen.dart';
import 'package:best_book_app/page/ProfilePage/profile_screen.dart';
import 'package:best_book_app/page/book_all_screens.dart';
import 'package:best_book_app/page/book_detail/book_detail_screen.dart';
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
  Map<String, WidgetBuilder> routes() {
    return {
      launchScreen: (context) => LaunchScreen(),
      mainScreen : (context) => MainScreens(),
    //  bookDetailScreen: (context) => BookDetail(),
      selectTopicsScreen: (context) => SelectTopics(),
      selectAuthorScreen: (context) => SelectAuthor(),
      congratulationScreen: (context) => Congratulation(),
    //  authorScreen: (context) => AuthorScreen(),
      profileScreen: (context) => ProfileScreen(),
      customizeInterestsScreen: (context) => CustomInterestScreen(),
      adminMainScreen: (context) => AdminMainScreen(),
      choseAdminOrUser: (context) => ChoseAdminOrUser(),
      createAuthor: (context) => CreateAuthor(),
      createTopic: (context) => CreateTopic(),
      createBookAll: (context) => CreateBookAll(),
      allAuthor: (context) => AllAuthor(),
      bookGreatestScreens: (context) => BookGreatestALL(),
      loginScreen: (context) => LoginScreen(),
      authScreen: (context) => AuthScreen(),
      bookAllScreens: (context) => BookALLScreens(),

    };
  }
 }

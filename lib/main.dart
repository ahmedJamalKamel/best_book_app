
import 'package:best_book_app/get/author_getx_controller.dart';
import 'package:best_book_app/get/book_all_getx_controller.dart';
import 'package:best_book_app/get/book_greatest_getx_controller.dart';
import 'package:best_book_app/prefs/shared_pref_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'Routes/routes.dart';
import 'database/db_controller.dart';
import 'get/topic_getx_controller.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefController().initPref();
  await DbController().initDatabase();
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TopicGetxController _topicGetxController =
  Get.put<TopicGetxController>(TopicGetxController());
  final AuthorGetxController _authorGetxController = Get.put<AuthorGetxController>(AuthorGetxController());
  final BookAllGetxController _bookAllGetxController = Get.put<BookAllGetxController>(BookAllGetxController());
 // final BookGreatestGetxController _bookGreatestGetxController = Get.put<BookGreatestGetxController>(BookGreatestGetxController());
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375,812),
      builder: () {
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: Locale('en'),
          initialRoute: '/launch_screen',
          routes: PageRoutes().routes(),
        );
      },
    );
  }
}



import 'package:best_book_app/get/author_getx_controller.dart';
import 'package:best_book_app/get/book_all_getx_controller.dart';
import 'package:best_book_app/prefs/shared_pref_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'Routes/routes.dart';
import 'database/db_controller.dart';
import 'get/language_getx_controller.dart';
import 'get/topic_getx_controller.dart';
Future<void> main() async {
//  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
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
  final LanguageGetxController _LanguAllGetxController = Get.put<LanguageGetxController>(LanguageGetxController());
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
      designSize: const Size(375,812),
      builder: () {
        return   Obx((){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: Locale(_LanguAllGetxController.language.value),
            initialRoute: '/launch_screen',
            routes: PageRoutes().routes(),
          );});
      },
    );
  }
}


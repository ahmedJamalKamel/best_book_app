import 'package:best_book_app/prefs/shared_pref_controller.dart';
import 'package:get/get.dart';
class LanguageGetxController extends GetxController {
  static LanguageGetxController get to => Get.find<LanguageGetxController>();
  RxString language = 'en'.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    language.value = SharedPrefController().language;
    super.onInit();
  }

  void changeLanguage() {
    language.value = language.value == 'en' ? 'ar' : 'en';
    SharedPrefController().setLanguage();
  }
}

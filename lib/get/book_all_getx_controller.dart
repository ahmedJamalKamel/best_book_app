
import 'package:best_book_app/database/controllers/book_all_db_controller.dart';
import 'package:best_book_app/models/book_all.dart';
import 'package:get/get.dart';

class BookAllGetxController extends GetxController {
  RxList<BookAll> bookAll = <BookAll>[].obs;
  RxBool loading = false.obs;
  final AllBookDbController _topicDbController = AllBookDbController();

  static BookAllGetxController get to => Get.find<BookAllGetxController>();

  @override
  void onInit() {
    readContacts();
    super.onInit();
  } //CRUD

  Future<void> readContacts() async {
    loading.value = true;
    bookAll.value = await _topicDbController.read();
    loading.value = false;
    // notifyListeners();
    // update();
  }

  Future<bool> createContact(BookAll topic) async {
    print("createContact");
    int newRowId = await _topicDbController.create(topic);
    if (newRowId != 0) {
      topic.id = newRowId;
      bookAll.add(topic);
      // notifyListeners();
      // update();
    }
    return newRowId != 0;
  }

  Future<bool> deleteContact(int id) async {
    bool deleted = await _topicDbController.delete(id);
    if (deleted) {
      // contacts.removeWhere((element) => element.id == id);
      int index = bookAll.indexWhere((element) => element.id == id);
      if (index != -1) {
        bookAll.removeAt(index);
        // notifyListeners();
        // update();
      }
    }
    return deleted;
  }

  Future<bool> updateContact(BookAll topic) async {
    bool updated = await _topicDbController.update(topic);
    if (updated) {
      // int index = contacts.indexOf(contact);
      int index = bookAll.indexWhere((element) => element.id == topic.id);
      if (index != -1) {
        bookAll[index] = topic;
        // notifyListeners();
        // update();
      }
    }
    return updated;
  }
}

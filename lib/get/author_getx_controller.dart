
import 'package:best_book_app/database/controllers/author_db_controller.dart';
import 'package:best_book_app/database/controllers/topic_db_controller.dart';
import 'package:best_book_app/models/authors.dart';
import 'package:best_book_app/models/topics.dart';
import 'package:get/get.dart';

class AuthorGetxController extends GetxController {
  RxList<Authors> authors = <Authors>[].obs;
  RxBool loading = false.obs;
  final AuthorDbController _topicDbController = AuthorDbController();

  static AuthorGetxController get to => Get.find<AuthorGetxController>();

  @override
  void onInit() {
    readContacts();
    super.onInit();
  } //CRUD

  Future<void> readContacts() async {
    loading.value = true;
    authors.value = await _topicDbController.read();
    loading.value = false;
    // notifyListeners();
    // update();
  }

  Future<bool> createContact(Authors topic) async {
    print("createContact");
    int newRowId = await _topicDbController.create(topic);
    if (newRowId != 0) {
      topic.id = newRowId;
      authors.add(topic);
      // notifyListeners();
      // update();
    }
    return newRowId != 0;
  }

  Future<bool> deleteContact(int id) async {
    bool deleted = await _topicDbController.delete(id);
    if (deleted) {
      // contacts.removeWhere((element) => element.id == id);
      int index = authors.indexWhere((element) => element.id == id);
      if (index != -1) {
        authors.removeAt(index);
        // notifyListeners();
        // update();
      }
    }
    return deleted;
  }

  Future<bool> updateContact(Authors topic) async {
    bool updated = await _topicDbController.update(topic);
    if (updated) {
      // int index = contacts.indexOf(contact);
      int index = authors.indexWhere((element) => element.id == topic.id);
      if (index != -1) {
        authors[index] = topic;
        // notifyListeners();
        // update();
      }
    }
    return updated;
  }
}

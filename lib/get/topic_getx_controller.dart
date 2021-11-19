
import 'package:best_book_app/database/controllers/topic_db_controller.dart';
import 'package:best_book_app/models/topics.dart';
import 'package:get/get.dart';

class TopicGetxController extends GetxController {
  RxList<Topics> Topic = <Topics>[].obs;
  RxBool loading = false.obs;
  final TopicDbController _topicDbController = TopicDbController();

  static TopicGetxController get to => Get.find<TopicGetxController>();

  @override
  void onInit() {
    readContacts();
    super.onInit();
  } //CRUD

  Future<void> readContacts() async {
    loading.value = true;
    Topic.value = await _topicDbController.read();
    loading.value = false;
    // notifyListeners();
    // update();
  }

  Future<bool> createContact(Topics topic) async {
    print("createContact");
    int newRowId = await _topicDbController.create(topic);
    if (newRowId != 0) {
      topic.id = newRowId;
      Topic.add(topic);
      // notifyListeners();
      // update();
    }
    return newRowId != 0;
  }

  Future<bool> deleteContact(int id) async {
    bool deleted = await _topicDbController.delete(id);
    if (deleted) {
      // contacts.removeWhere((element) => element.id == id);
      int index = Topic.indexWhere((element) => element.id == id);
      if (index != -1) {
        Topic.removeAt(index);
        // notifyListeners();
        // update();
      }
    }
    return deleted;
  }

  Future<bool> updateContact(Topics topic) async {
    bool updated = await _topicDbController.update(topic);
    if (updated) {
      // int index = contacts.indexOf(contact);
      int index = Topic.indexWhere((element) => element.id == topic.id);
      if (index != -1) {
        Topic[index] = topic;
        // notifyListeners();
        // update();
      }
    }
    return updated;
  }
}

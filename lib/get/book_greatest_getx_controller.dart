//
// import 'package:best_book_app/database/controllers/book_all_db_controller.dart';
// import 'package:best_book_app/database/controllers/book_greatest_db_controller.dart';
// import 'package:best_book_app/models/book_all.dart';
// import 'package:best_book_app/models/book_greatest.dart';
// import 'package:get/get.dart';
//
// class BookGreatestGetxController extends GetxController {
//   RxList<BookAll> bookgreat = <BookAll>[].obs;
//   RxBool loading = false.obs;
//   final BookGreatestDbController _topicDbController = BookGreatestDbController();
//
//   static BookGreatestGetxController get to => Get.find<BookGreatestGetxController>();
//
//   @override
//   void onInit() {
//     readContacts();
//     super.onInit();
//   } //CRUD
//
//   Future<void> readContacts() async {
//     loading.value = true;
//     bookgreat.value = await _topicDbController.read();
//     loading.value = false;
//     // notifyListeners();
//     // update();
//   }
//
//   Future<bool> createContact(BookAll topic) async {
//     print("createContact");
//     int newRowId = await _topicDbController.create(topic);
//     if (newRowId != 0) {
//       topic.id = newRowId;
//       bookgreat.add(topic);
//       // notifyListeners();
//       // update();
//     }
//     return newRowId != 0;
//   }
//
//   Future<bool> deleteContact(int id) async {
//     bool deleted = await _topicDbController.delete(id);
//     if (deleted) {
//       // contacts.removeWhere((element) => element.id == id);
//       int index = bookgreat.indexWhere((element) => element.id == id);
//       if (index != -1) {
//         bookgreat.removeAt(index);
//         // notifyListeners();
//         // update();
//       }
//     }
//     return deleted;
//   }
//
//   Future<bool> updateContact(BookAll topic) async {
//     bool updated = await _topicDbController.update(topic);
//     if (updated) {
//       // int index = contacts.indexOf(contact);
//       int index = bookgreat.indexWhere((element) => element.id == topic.id);
//       if (index != -1) {
//         bookgreat[index] = topic;
//         // notifyListeners();
//         // update();
//       }
//     }
//     return updated;
//   }
// }

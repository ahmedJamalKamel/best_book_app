import 'dart:io';

import 'package:image_picker/image_picker.dart';

class Topics {
  late int id;
  late String name;
  late String image;
   int selected=0;

  Topics();

  Topics.fromMap(Map<String, dynamic> rowMap) {
    id = rowMap['id'];
    name = rowMap['name'];
    image = rowMap['image'];
    selected = rowMap['selected'];
  }

  ///Used to save data in a database table.
  Map<String, dynamic> toMap() {
    print("toMap");
    Map<String, dynamic> rowMap = <String, dynamic>{};
    rowMap['name'] = name;
    rowMap['image'] = image;
    rowMap['selected'] = selected;
    return rowMap;
  }
}

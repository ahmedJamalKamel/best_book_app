class Authors {
  late int id;
  late String name;
  late String image;
  late String numberBook;
  late String des;
   int selected=0;

  Authors();

  Authors.fromMap(Map<String, dynamic> rowMap) {
    id = rowMap['id'];
    name = rowMap['name'];
    image = rowMap['image'];
    numberBook = rowMap['numberBook'];
    des = rowMap['des'];
    selected = rowMap['selected'];
  }

  ///Used to save data in a database table.
  Map<String, dynamic> toMap() {
    Map<String, dynamic> rowMap = <String, dynamic>{};
    rowMap['name'] = name;
    rowMap['image'] = image;
    rowMap['numberBook'] = numberBook;
    rowMap['des'] = des;
    rowMap['selected'] = selected;
    return rowMap;
  }
}

class BookAll {
  late int id;
  late String image;
  late String name;
  late String nameTopic;
  late String nameAuthor;
  late String description;
  late String pageNumber;
  late String dateCreated;
  late String language;
   int favourite=0;
    int grate=0;

  BookAll();

  ///Used to read table row data and convert it to a model.
  BookAll.fromMap(Map<String, dynamic> rowMap) {
    id = rowMap['id'];
    name = rowMap['name'];
    image = rowMap['image'];
    nameTopic = rowMap['nameTopic'];
    nameAuthor = rowMap['nameAuthor'];
    description = rowMap['description'];
    pageNumber = rowMap['pageNumber'];
    dateCreated = rowMap['dateCreated'];
    language = rowMap['language'];
    favourite = rowMap['favourite'];
    grate = rowMap['grate'];
    print("aahmed fromMap");
  }

  ///Used to save data in a database table.
  Map<String, dynamic> toMap() {
    Map<String, dynamic> rowMap = <String, dynamic>{};
    rowMap['name'] = name;
    rowMap['image'] = image;
    rowMap['nameTopic'] = nameTopic;
    rowMap['nameAuthor'] = nameAuthor;
    rowMap['description'] = description;
    rowMap['pageNumber'] = pageNumber;
    rowMap['dateCreated'] = dateCreated;
    rowMap['language'] = language;
    rowMap['favourite'] = favourite;
    rowMap['grate'] = grate;
    return rowMap;
  }
}

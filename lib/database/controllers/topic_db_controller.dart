
import 'package:best_book_app/models/contact.dart';
import 'package:best_book_app/models/topics.dart';
import 'package:sqflite/sqflite.dart';

import '../db_controller.dart';
import '../db_operations.dart';

class TopicDbController implements DbOperations<Topics> {
  final Database _database = DbController().database;

  @override
  Future<int> create(Topics object) async {
    // INSERT INTO contact (name, phone) VALUES ('Name','1234');
    print("add");
    return await _database.insert('topics', object.toMap());
  }

  @override
  Future<bool> delete(int id) async {
    //DELETE FROM contacts;
    //DELETE FROM contacts WHERE id = 1;
    int numberOfDeletedRows = await _database.delete(
      'topics',
      where: 'id = ?',
      whereArgs: [id],
    );
    return numberOfDeletedRows > 0;
  }

  @override
  Future<List<Topics>> read() async {
    // TODO: implement read
    // SELECT * FROM contacts;
    List<Map<String, dynamic>> rowsMap = await _database.query('topics');
    return rowsMap.map((Map<String, dynamic> rowMap) => Topics.fromMap(rowMap)).toList();
  }

  @override
  Future<Topics?> show(int id) async {
    // SELECT * FROM contacts WHERE id = ?;
    List<Map<String, dynamic>> rows =
        await _database.query('topics', where: 'id = ?', whereArgs: [id]);
    return rows.isNotEmpty ? Topics.fromMap(rows.first) : null;
  }

  @override
  Future<bool> update(Topics object) async {
    //UPDATE contacts SET name = 'NAME', phone = '1234';
    //UPDATE contacts SET name = 'NAME', phone = '1234' WHERE id = ?;
    int numberOfUpdatedRows = await _database.update(
      'topics',
      object.toMap(),
      where: 'id = ?',
      whereArgs: [object.id],
    );
    return numberOfUpdatedRows > 0;
  }
}

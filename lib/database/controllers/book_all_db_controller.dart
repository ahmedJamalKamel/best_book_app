
import 'package:best_book_app/models/book_all.dart';
import 'package:best_book_app/models/contact.dart';
import 'package:sqflite/sqflite.dart';

import '../db_controller.dart';
import '../db_operations.dart';

class AllBookDbController implements DbOperations<BookAll> {
  final Database _database = DbController().database;

  @override
  Future<int> create(BookAll object) async {
    // INSERT INTO contact (name, phone) VALUES ('Name','1234');
    return await _database.insert('basicBook', object.toMap());
  }

  @override
  Future<bool> delete(int id) async {
    //DELETE FROM contacts;
    //DELETE FROM contacts WHERE id = 1;
    int numberOfDeletedRows = await _database.delete(
      'basicBook',
      where: 'id = ?',
      whereArgs: [id],
    );
    return numberOfDeletedRows > 0;
  }

  @override
  Future<List<BookAll>> read() async {
    // TODO: implement read
    // SELECT * FROM contacts;
    List<Map<String, dynamic>> rowsMap = await _database.query('basicBook');
    print("ahmed a read");
    return rowsMap.map((Map<String, dynamic> rowMap) => BookAll.fromMap(rowMap)).toList();
  }

  @override
  Future<BookAll?> show(int id) async {
    // SELECT * FROM contacts WHERE id = ?;
    List<Map<String, dynamic>> rows =
        await _database.query('basicBook', where: 'id = ?', whereArgs: [id]);
    return rows.isNotEmpty ? BookAll.fromMap(rows.first) : null;
  }

  @override
  Future<bool> update(BookAll object) async {
    //UPDATE contacts SET name = 'NAME', phone = '1234';
    //UPDATE contacts SET name = 'NAME', phone = '1234' WHERE id = ?;
    int numberOfUpdatedRows = await _database.update(
      'basicBook',
      object.toMap(),
      where: 'id = ?',
      whereArgs: [object.id],
    );
    return numberOfUpdatedRows > 0;
  }
}

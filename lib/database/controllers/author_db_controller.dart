
import 'package:best_book_app/models/authors.dart';
import 'package:best_book_app/models/contact.dart';
import 'package:sqflite/sqflite.dart';

import '../db_controller.dart';
import '../db_operations.dart';

class AuthorDbController implements DbOperations<Authors> {
  final Database _database = DbController().database;

  @override
  Future<int> create(Authors object) async {
    // INSERT INTO contact (name, phone) VALUES ('Name','1234');
    return await _database.insert('authors', object.toMap());
  }

  @override
  Future<bool> delete(int id) async {
    //DELETE FROM contacts;
    //DELETE FROM contacts WHERE id = 1;
    int numberOfDeletedRows = await _database.delete(
      'authors',
      where: 'id = ?',
      whereArgs: [id],
    );
    return numberOfDeletedRows > 0;
  }

  @override
  Future<List<Authors>> read() async {
    // TODO: implement read
    // SELECT * FROM contacts;
    List<Map<String, dynamic>> rowsMap = await _database.query('authors');
    return rowsMap.map((Map<String, dynamic> rowMap) => Authors.fromMap(rowMap)).toList();
  }

  @override
  Future<Authors?> show(int id) async {
    // SELECT * FROM contacts WHERE id = ?;
    List<Map<String, dynamic>> rows =
        await _database.query('authors', where: 'id = ?', whereArgs: [id]);
    return rows.isNotEmpty ? Authors.fromMap(rows.first) : null;
  }

  @override
  Future<bool> update(Authors object) async {
    //UPDATE contacts SET name = 'NAME', phone = '1234';
    //UPDATE contacts SET name = 'NAME', phone = '1234' WHERE id = ?;
    int numberOfUpdatedRows = await _database.update(
      'authors',
      object.toMap(),
      where: 'id = ?',
      whereArgs: [object.id],
    );
    return numberOfUpdatedRows > 0;
  }
}

import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbController {
  static final DbController _instance = DbController._internal();
  late Database _database;

  DbController._internal();

  factory DbController() {
    return _instance;
  }

  Database get database => _database;

  Future<void> initDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, 'app_db.sql');
    _database = await openDatabase(
      path,
      version: 1,
      onOpen: (db) {},
      onCreate: (Database db, int version) async {
        await db.execute('CREATE TABLE contacts ('
            'id INTEGER PRIMARY KEY AUTOINCREMENT,'
            'name TEXT NOT NULL,'
            'phone TEXT NOT NULL'
            ')');
        await db.execute('CREATE TABLE authors ('
            'id INTEGER PRIMARY KEY AUTOINCREMENT,'
            'name TEXT NOT NULL,'
            'image TEXT NOT NULL,'
            'numberBook TEXT NOT NULL,'
            'des TEXT NOT NULL,'
            'selected INTEGER NOT NULL'
            ')');
        await db.execute('CREATE TABLE topics ('
            'id INTEGER PRIMARY KEY AUTOINCREMENT,'
            'name TEXT NOT NULL,'
            'image TEXT NOT NULL,'
            'selected INTEGER NOT NULL'
            ')');
        await db.execute('CREATE TABLE basicBook ('
            'id INTEGER PRIMARY KEY AUTOINCREMENT,'
            'name TEXT NOT NULL,'
            'image TEXT NOT NULL,'
            'nameTopic TEXT NOT NULL,'
            'nameAuthor TEXT NOT NULL,'
            'description TEXT NOT NULL,'
            'pageNumber TEXT NOT NULL,'
            'dateCreated TEXT NOT NULL,'
            'language TEXT NOT NULL,'
            'favourite INTEGER NOT NULL,'
            'grate INTEGER NOT NULL'
            ')');
        // await db.execute('CREATE TABLE greatestBook ('
        //     'id INTEGER PRIMARY KEY AUTOINCREMENT,'
        //     'name TEXT NOT NULL,'
        //     'image TEXT NOT NULL,'
        //     'nameTopic TEXT NOT NULL,'
        //     'nameAuthor TEXT NOT NULL,'
        //     'description TEXT NOT NULL,'
        //     'pageNumber TEXT NOT NULL,'
        //     'dateCreated TEXT NOT NULL,'
        //     'language TEXT NOT NULL,'
        //     'favourite BLOB NOT NULL'
        //     ')');

      },
      onUpgrade: (Database db, int oldVersion, int newVersion) {

      },
      onDowngrade: (db, oldVersion, newVersion) {},
    );
  }
}

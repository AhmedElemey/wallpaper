import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static Database? _database;
  static final DBHelper _instance = DBHelper._();
  static const _tableName = 'favorites';

  DBHelper._();

  factory DBHelper() {
    return _instance;
  }

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await init();
    return _database!;
  }

  static Future<Database> init() async {
    Directory documentsDir = await getApplicationDocumentsDirectory();
    String path = join(documentsDir.path, 'favorites.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE $_tableName (
            id INTEGER PRIMARY KEY,
            imagePath TEXT
          )
        ''');
      },
    );
  }

  Future<int> insertFavorite(String imagePath) async {
    final db = await database;
    return await db.insert(_tableName, {'imagePath': imagePath});
  }

  Future<List<String>> getFavorites() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(_tableName);
    return List.generate(maps.length, (i) => maps[i]['imagePath']);
  }

  Future<void> deleteFavorite(String imagePath) async {
    final db = await database;
    await db.delete(_tableName, where: 'imagePath = ?', whereArgs: [imagePath]);
  }
}

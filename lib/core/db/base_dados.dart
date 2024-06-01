import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:flutter/services.dart' show rootBundle;

class BaseDados {
  static final BaseDados _instance = BaseDados._internal();

  factory BaseDados() => _instance;

  BaseDados._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'acf.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    String sql = await rootBundle.loadString('assets/biblia/acf.sql');
    List<String> sqlCommands = sql.split('\n');
    for (String command in sqlCommands) {
      if (command.trim().isNotEmpty) {
        await db.execute(command);
      }
    }
  }

  // Future<int> insertItem(Map<String, dynamic> item) async {
  //   Database db = await database;
  //   return await db.insert('items', item);
  // }

  Future<List<Map<String, dynamic>>> query(String query) async {
    Database db = await database;
    return await db.query(query);
  }

  Future<List<Map<String, dynamic>>> getItems() async {
    Database db = await database;
    return await db.query('items');
  }

  // Future<int> updateItem(Map<String, dynamic> item) async {
  //   Database db = await database;
  //   int id = item['id'];
  //   return await db.update('items', item, where: 'id = ?', whereArgs: [id]);
  // }

  // Future<int> deleteItem(int id) async {
  //   Database db = await database;
  //   return await db.delete('items', where: 'id = ?', whereArgs: [id]);
  // }
}

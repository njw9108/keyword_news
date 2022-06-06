import 'package:news_sorter/domain/model/keyword.dart';
import 'package:sqflite/sqflite.dart';

class KeywordsDatasource {
  Database db;

  KeywordsDatasource(this.db);

  Future<Keyword?> getKeywordById(int id) async {
    List<Map<String, dynamic>> maps = await db.query(
      'KEYWORD',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Keyword.fromJson(maps.first);
    }
    return null;
  }

  Future<List<Keyword>> getKeywords() async {
    List<Map<String, dynamic>> maps = await db.query('KEYWORD');
    return maps.map((e) => Keyword.fromJson(e)).toList();
  }

  Future<void> insertKeyword(Keyword keyword) async {
    await db.insert('KEYWORD', keyword.toJson());
  }

  Future<void> updateKeyword(Keyword keyword) async {
    await db.update(
      'KEYWORD',
      keyword.toJson(),
      where: 'id = ?',
      whereArgs: [keyword.id],
    );
  }

  Future<void> deleteKeyword(Keyword keyword) async {
    await db.delete(
      'KEYWORD',
      where: 'id = ?',
      whereArgs: [keyword.id],
    );
  }
}


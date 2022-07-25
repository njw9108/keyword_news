import 'package:news_sorter/core/result.dart';
import 'package:news_sorter/domain/model/keyword/keyword_info.dart';
import 'package:sqflite/sqlite_api.dart';

class KeywordDataSource {
  Database db;

  KeywordDataSource(this.db);

  Future<Result<KeywordInfo>> getKeywordById(int id) async {
    List<Map<String, dynamic>> maps = await db.query(
      'keyword_table',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Result.success(KeywordInfo.fromJson(maps.first));
    }
    return const Result.error('키워드를 가져오지 못했습니다.');
  }

  Future<List<KeywordInfo>> getKeywords() async {
    List<Map<String, dynamic>> maps = await db.query('keyword_table');
    return maps.map((e) => KeywordInfo.fromJson(e)).toList();
  }

  Future<void> insertKeyword(KeywordInfo keyword) async {
    await db.insert('keyword_table', keyword.toJson());
  }

  Future<void> updateKeyword(KeywordInfo keyword) async {
    await db.update(
      'keyword_table',
      keyword.toJson(),
      where: 'id = ?',
      whereArgs: [keyword.id],
    );
  }

  Future<void> deleteKeyword(KeywordInfo keyword) async {
    // DELETE FROM keyword WHERE id = 10;
    await db.delete(
      'keyword_table',
      where: 'id = ?',
      whereArgs: [keyword.id],
    );
  }
}

import 'package:flutter_test/flutter_test.dart';
import 'package:news_sorter/data/data_source/keyword/keyword_data_source.dart';
import 'package:news_sorter/domain/model/keyword/keyword_info.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  test('db test', () async {
    final db = await databaseFactoryFfi.openDatabase(inMemoryDatabasePath);

    await db.execute(
        'CREATE TABLE keyword_table (id INTEGER PRIMARY KEY AUTOINCREMENT, keyword TEXT, timestamp INTEGER)');


    final helper = KeywordDataSource(db);

    await helper.insertKeyword(KeywordInfo(keyword: 'test', timestamp: 111),);

    expect((await helper.getKeywords()).length, 1);

    db.close();
  });
}

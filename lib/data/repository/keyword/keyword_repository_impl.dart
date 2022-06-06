import 'package:news_sorter/core/result.dart';
import 'package:news_sorter/data/data_source/keyword/keyword_data_source.dart';
import 'package:news_sorter/domain/model/keyword/keyword_info.dart';
import 'package:news_sorter/domain/repository/keyword/keyword_repository.dart';

class KeywordRepositoryImpl implements KeywordRepository {
  KeywordDataSource dataSource;

  KeywordRepositoryImpl(this.dataSource);

  @override
  Future<Result<KeywordInfo>> getKeywordById(int id) async {
    return await dataSource.getKeywordById(id);
  }

  @override
  Future<List<KeywordInfo>> getKeywords() async {
    return await dataSource.getKeywords();
  }

  @override
  Future<void> deleteKeyword(KeywordInfo keyword) async {
    await dataSource.deleteKeyword(keyword);
  }

  @override
  Future<void> insertKeyword(KeywordInfo keyword) async {
    await dataSource.insertKeyword(keyword);
  }

  @override
  Future<void> updateKeyword(KeywordInfo keyword) async {
    await dataSource.updateKeyword(keyword);
  }
}

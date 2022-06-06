import 'package:news_sorter/core/result.dart';
import 'package:news_sorter/data/data_source/keywords_datasource.dart';
import 'package:news_sorter/domain/model/keyword.dart';
import 'package:news_sorter/domain/repository/keywords_repository.dart';

class KeywordsRepositoryImpl implements KeywordsRepository {
  KeywordsDatasource dataSource;

  KeywordsRepositoryImpl(this.dataSource);

  @override
  Future<void> deleteKeyword(Keyword keyword) async {
    await dataSource.deleteKeyword(keyword);
  }

  @override
  Future<Result<Keyword>> getKeywordById(int id) async {
    Keyword? keyword = await dataSource.getKeywordById(id);

    if (keyword != null) {
      return Result.success(keyword);
    }

    return const Result.error('Keyword를 찾을 수 없습니다.');
  }

  @override
  Future<List<Keyword>> getKeywords() async {
    return await dataSource.getKeywords();
  }

  @override
  Future<void> insertKeyword(Keyword keyword) async {
    return await dataSource.insertKeyword(keyword);
  }

  @override
  Future<void> updateKeyword(Keyword keyword) async {
    await dataSource.updateKeyword(keyword);
  }
}

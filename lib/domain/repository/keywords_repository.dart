import 'package:news_sorter/core/result.dart';
import 'package:news_sorter/domain/model/keyword.dart';

abstract class KeywordsRepository {
  Future<Result<Keyword>> getKeywordById(int id);

  Future<List<Keyword>> getKeywords();

  Future<void> insertKeyword(Keyword keyword);

  Future<void> updateKeyword(Keyword keyword);

  Future<void> deleteKeyword(Keyword keyword);
}

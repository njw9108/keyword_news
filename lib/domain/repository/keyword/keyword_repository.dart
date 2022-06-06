import 'package:news_sorter/core/result.dart';
import 'package:news_sorter/domain/model/keyword/keyword_info.dart';

abstract class KeywordRepository {
  Future<Result<KeywordInfo>> getKeywordById(int id);
  Future<List<KeywordInfo>> getKeywords();
  Future<void> insertKeyword(KeywordInfo keyword);
  Future<void> updateKeyword(KeywordInfo keyword);
  Future<void> deleteKeyword(KeywordInfo keyword);
}




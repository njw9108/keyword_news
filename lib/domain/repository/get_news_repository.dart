import 'package:news_sorter/core/result.dart';
import 'package:news_sorter/domain/model/news/news_info.dart';

abstract class GetNewsRepository {
  Future<Result<NewsInfo>> getNewsInfo(String keyword);
}
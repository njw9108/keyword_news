import 'package:news_sorter/core/result.dart';
import 'package:news_sorter/data/data_source/news/get_news_data_source.dart';
import 'package:news_sorter/domain/model/news/news_info.dart';
import 'package:news_sorter/domain/repository/news/get_news_repository.dart';

class GetNewsRepositoryImpl implements GetNewsRepository {
  final dataSource = GetNewsDataSource();

  @override
  Future<Result<NewsInfo>> getNewsInfo(String keyword) {
    return dataSource.getNewsData(keyword);
  }
}

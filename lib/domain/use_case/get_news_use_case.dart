import 'package:news_sorter/core/result.dart';
import 'package:news_sorter/domain/model/news/news_info.dart';
import 'package:news_sorter/domain/repository/get_news_repository.dart';

class GetNewsUseCase {
  GetNewsRepository repository;

  GetNewsUseCase(this.repository);

  Future<Result<NewsInfo>> call(String keyword) async {
    return await repository.getNewsInfo(keyword);
  }
}

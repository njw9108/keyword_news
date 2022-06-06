import 'package:news_sorter/domain/model/keyword/keyword_info.dart';
import 'package:news_sorter/domain/repository/keyword/keyword_repository.dart';

class GetKeywordsUseCase {
  KeywordRepository repository;

  GetKeywordsUseCase(this.repository);

  Future<List<KeywordInfo>> call() async {
    return await repository.getKeywords();
  }
}
import 'package:news_sorter/domain/model/keyword/keyword_info.dart';
import 'package:news_sorter/domain/repository/keyword/keyword_repository.dart';

class DeleteKeywordUseCase {
  KeywordRepository repository;

  DeleteKeywordUseCase(this.repository);

  Future<void> call(KeywordInfo keyword) async {
    await repository.deleteKeyword(keyword);
  }
}

import 'package:news_sorter/domain/model/keyword/keyword_info.dart';
import 'package:news_sorter/domain/repository/keyword/keyword_repository.dart';

class AddKeywordUseCase {
  KeywordRepository repository;

  AddKeywordUseCase(this.repository);

  Future<void> call(KeywordInfo keyword) async {
    await repository.insertKeyword(keyword);
  }
}

import 'package:news_sorter/domain/model/keyword/keyword_info.dart';
import 'package:news_sorter/domain/repository/keyword/keyword_repository.dart';

class UpdateKeywordUseCase {
  KeywordRepository repository;

  UpdateKeywordUseCase(this.repository);

  Future<void> call(KeywordInfo keyword) async {
    await repository.updateKeyword(keyword);
  }
}

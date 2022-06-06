import 'package:news_sorter/core/result.dart';
import 'package:news_sorter/domain/model/keyword/keyword_info.dart';
import 'package:news_sorter/domain/repository/keyword/keyword_repository.dart';

class GetKeywordUseCase {
  KeywordRepository repository;

  GetKeywordUseCase(this.repository);

  Future<Result<KeywordInfo>> call(int id) async {
    return await repository.getKeywordById(id);
  }

}

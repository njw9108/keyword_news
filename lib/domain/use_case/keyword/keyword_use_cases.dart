import 'package:news_sorter/domain/use_case/keyword/add_keyword_use_case.dart';
import 'package:news_sorter/domain/use_case/keyword/delete_keyword_use_case.dart';
import 'package:news_sorter/domain/use_case/keyword/get_keyword_use_case.dart';
import 'package:news_sorter/domain/use_case/keyword/get_keywords_use_case.dart';

class KeywordUseCases {
  final AddKeywordUseCase addKeyword;
  final DeleteKeywordUseCase deleteKeyword;
  final GetKeywordUseCase getKeyword;
  final GetKeywordsUseCase getKeywords;

  KeywordUseCases({
    required this.addKeyword,
    required this.deleteKeyword,
    required this.getKeyword,
    required this.getKeywords,
  });
}

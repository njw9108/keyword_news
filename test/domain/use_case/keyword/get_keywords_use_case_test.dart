import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:news_sorter/domain/model/keyword/keyword_info.dart';
import 'package:news_sorter/domain/repository/keyword/keyword_repository.dart';
import 'package:news_sorter/domain/use_case/keyword/get_keywords_use_case.dart';
import 'package:news_sorter/domain/util/keyword_order.dart';

import 'get_keywords_use_case_test.mocks.dart';

@GenerateMocks([KeywordRepository])
void main() {
  test('정렬 기능 테스트', () async {
    final repository = MockKeywordRepository();
    final getKeywords = GetKeywordsUseCase(repository);

    when(repository.getKeywords()).thenAnswer((realInvocation) async => [
          KeywordInfo(keyword: 'keyword1', timestamp: 1),
          KeywordInfo(keyword: 'keyword2', timestamp: 2),
          KeywordInfo(keyword: 'keyword3', timestamp: 3),
          KeywordInfo(keyword: 'keyword4', timestamp: 4),
        ]);

    List<KeywordInfo> result = await getKeywords(KeywordOrder.title());

    expect(result[0].keyword, 'keyword1');

    List<KeywordInfo> result2 = await getKeywords(KeywordOrder.date());

    expect(result2[0].timestamp, 4);
  });
}

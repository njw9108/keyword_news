import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_sorter/domain/model/keyword/keyword_info.dart';

part 'keyword_state.freezed.dart';

part 'keyword_state.g.dart';

@freezed
class KeywordState with _$KeywordState {
  factory KeywordState({
    @Default([]) List<KeywordInfo> keywords,
  }) = _KeywordState;

  factory KeywordState.fromJson(Map<String, dynamic> json) =>
      _$KeywordStateFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_sorter/domain/model/news/news_info.dart';

part 'news_state.freezed.dart';

part 'news_state.g.dart';

@freezed
class NewsState with _$NewsState {
  factory NewsState({
    NewsInfo? newsInfo,
  }) = _NewsState;

  factory NewsState.fromJson(Map<String, dynamic> json) =>
      _$NewsStateFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'keyword_events.freezed.dart';

@freezed
class KeywordEvents with _$KeywordEvents {
  const factory KeywordEvents.loadKeywords() = LoadKeywords;
  const factory KeywordEvents.saveKeywords(String content) = SaveKeywords;
}

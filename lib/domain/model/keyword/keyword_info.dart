import 'package:freezed_annotation/freezed_annotation.dart';
part 'keyword_info.freezed.dart';
part 'keyword_info.g.dart';

@freezed
class KeywordInfo with _$KeywordInfo {
  factory KeywordInfo({
    required String keyword,
    required int timestamp,
    int? id,
  }) = _KeywordInfo;
  factory KeywordInfo.fromJson(Map<String, dynamic> json) => _$KeywordInfoFromJson(json);
}
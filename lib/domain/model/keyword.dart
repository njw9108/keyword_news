import 'package:freezed_annotation/freezed_annotation.dart';
part 'keyword.freezed.dart';
part 'keyword.g.dart';

@freezed
class Keyword with _$Keyword {
  factory Keyword({
    required String value,
    int? id,
  }) = _Keyword;
  factory Keyword.fromJson(Map<String, dynamic> json) => _$KeywordFromJson(json);
}
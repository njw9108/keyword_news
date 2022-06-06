import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_sorter/domain/model/news/news_item.dart';
part 'news_info.freezed.dart';
part 'news_info.g.dart';

@freezed
class NewsInfo with _$NewsInfo {
  factory NewsInfo({
    @Default('') String lastBuildDate,
    @Default(0) int total,
    @Default(0) int start,
    @Default(0) int display,
    @Default([]) List<NewsItem> items,
  }) = _NewsInfo;
  factory NewsInfo.fromJson(Map<String, dynamic> json) => _$NewsInfoFromJson(json);
}
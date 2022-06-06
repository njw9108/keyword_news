import 'package:freezed_annotation/freezed_annotation.dart';
part 'news_item.freezed.dart';
part 'news_item.g.dart';

@freezed
class NewsItem with _$NewsItem {
  factory NewsItem({
    @Default('') String title,
    @Default('') String originallink,
    @Default('') String link,
    @Default('') String description,
    @Default('') String pubDate,
  }) = _NewsItem;
  factory NewsItem.fromJson(Map<String, dynamic> json) => _$NewsItemFromJson(json);
}
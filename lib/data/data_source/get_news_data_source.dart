import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_sorter/constants/key.dart';
import 'package:news_sorter/core/result.dart';
import 'package:news_sorter/domain/model/news/news_info.dart';

class GetNewsDataSource {
  final http.Client _client;

  GetNewsDataSource({http.Client? client}) : _client = client ?? http.Client();

  Future<Result<NewsInfo>> getNewsData(String keyword) async {
    try {
      final encode = Uri.encodeQueryComponent(keyword);
      String url = '$newsBaseUrl$encode';
      Map<String, String> requestHeaders = {};
      requestHeaders.putIfAbsent("X-Naver-Client-Id", () => clientId);
      requestHeaders.putIfAbsent("X-Naver-Client-Secret", () => clientSecret);
      final response =
          await _client.get(Uri.parse(url), headers: requestHeaders);
      final jsonResponse = jsonDecode(response.body);
      NewsInfo news = NewsInfo.fromJson(jsonResponse);
      return Result.success(news);
    } on Exception catch (e) {
      return Result.error(e.toString());
    }
  }
}

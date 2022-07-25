import 'package:flutter/material.dart';
import 'package:news_sorter/domain/model/keyword/keyword_info.dart';
import 'package:news_sorter/domain/use_case/keyword/keyword_use_cases.dart';
import 'package:news_sorter/presentation/keyword/keyword_events.dart';
import 'package:news_sorter/presentation/keyword/keyword_state.dart';

class KeywordViewModel with ChangeNotifier {
  final KeywordUseCases keywordUseCases;

  KeywordViewModel({
    required this.keywordUseCases,
  }) {
    _loadKeywords();
  }

  KeywordState _state = KeywordState();

  KeywordState get state => _state;

  void onEvent(KeywordEvents event) {
    event.when(
      loadKeywords: _loadKeywords,
      saveKeywords: _saveKeyword,
    );
  }

  void _loadKeywords() async {
    List<KeywordInfo> keywords = await keywordUseCases.getKeywords();

    for(int i=0;i<keywords.length;i++){
      print(keywords[i].keyword);
    }
    _state = state.copyWith(
      keywords: keywords,
    );
    notifyListeners();
  }

  void _saveKeyword(String content) async {
    if (content.isEmpty) {
      // _eventController
      //     .add(const AddEditNoteUiEvent.showSnackBar('제목이나 내용을 입력해 주세요'));
      return;
    }

    await keywordUseCases.addKeyword(
      KeywordInfo(
        keyword: content,
        timestamp: DateTime.now().millisecondsSinceEpoch,
      ),
    );

    _loadKeywords();
  }
}

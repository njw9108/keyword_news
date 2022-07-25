import 'package:news_sorter/data/data_source/keyword/keyword_data_source.dart';
import 'package:news_sorter/data/repository/keyword/keyword_repository_impl.dart';
import 'package:news_sorter/domain/use_case/keyword/add_keyword_use_case.dart';
import 'package:news_sorter/domain/use_case/keyword/delete_keyword_use_case.dart';
import 'package:news_sorter/domain/use_case/keyword/get_keyword_use_case.dart';
import 'package:news_sorter/domain/use_case/keyword/get_keywords_use_case.dart';
import 'package:news_sorter/domain/use_case/keyword/keyword_use_cases.dart';
import 'package:news_sorter/presentation/keyword/keyword_view_model.dart';
import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';

Future<List<SingleChildWidget>> getProviders() async {
  final db = await openDatabase(
    'keywords_db.db',
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
          'CREATE TABLE keyword_table (id INTEGER PRIMARY KEY AUTOINCREMENT, keyword TEXT, timestamp INTEGER)');
    },
  );

  final dataSource = KeywordDataSource(db);
  final keywordRepository = KeywordRepositoryImpl(dataSource);

  List<SingleChildWidget> viewModels = [
    ChangeNotifierProvider<KeywordViewModel>(
      create: (context) => KeywordViewModel(
          keywordUseCases: KeywordUseCases(
        getKeywords: GetKeywordsUseCase(keywordRepository),
        addKeyword: AddKeywordUseCase(keywordRepository),
        getKeyword: GetKeywordUseCase(keywordRepository),
        deleteKeyword: DeleteKeywordUseCase(keywordRepository),
      )),
    ),
  ];

  return viewModels;
}

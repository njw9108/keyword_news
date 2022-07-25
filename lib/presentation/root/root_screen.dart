import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_sorter/presentation/keyword/keyword_events.dart';
import 'package:news_sorter/presentation/keyword/keyword_screen.dart';
import 'package:news_sorter/presentation/keyword/keyword_view_model.dart';
import 'package:news_sorter/presentation/news/news_screen.dart';
import 'package:news_sorter/presentation/setting/setting_screen.dart';
import 'package:news_sorter/ui/color.dart';
import 'package:provider/provider.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final textController = TextEditingController();

  int _selectedTabIndex = 0;
  static const List<Widget> _screens = [
    KeywordScreen(),
    NewsScreen(),
    SettingScreen()
  ];

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final keywordViewModel = context.watch<KeywordViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('키워드 뉴스 모아보기'),
        centerTitle: false,
        backgroundColor: mainColor,
      ),
      floatingActionButton: (_selectedTabIndex == 0)
          ? FloatingActionButton(
              onPressed: () async {
                await showDialog<String>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('키워드 추가'),
                      content: TextField(
                        controller: textController,
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('취소'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('저장'),
                        ),
                      ],
                    );
                  },
                );
                keywordViewModel
                    .onEvent(KeywordEvents.saveKeywords(textController.text));
              },
              child: const Icon(Icons.add),
              backgroundColor: mainColor,
            )
          : null,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.keyboard,
            ),
            label: '키워드',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: '뉴스',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '설정',
          ),
        ],
        currentIndex: _selectedTabIndex,
        onTap: (index) {
          setState(() {
            _selectedTabIndex = index;
          });
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _screens[_selectedTabIndex],
      ),
    );
  }
}

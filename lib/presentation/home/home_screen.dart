import 'package:flutter/material.dart';
import 'package:news_sorter/data/data_source/get_news_data_source.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('키워드 뉴스 모아보기'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}

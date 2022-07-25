import 'package:flutter/material.dart';
import 'package:news_sorter/di/provider_setup.dart';
import 'package:news_sorter/presentation/root/root_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  //플랫폼 채널의 위젯 바인딩을 보장한다.
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: await getProviders(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Keyword News Collector',
      theme: ThemeData.light().copyWith(
        secondaryHeaderColor: const Color(0xFF2A2D3E),
      ),
      home: const RootScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_sorter/presentation/root/root_screen.dart';

void main() {
  runApp(const MyApp());
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

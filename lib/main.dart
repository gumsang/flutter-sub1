import 'package:flutter/material.dart';
import 'package:sub_column_row_image/youtube_main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const YoutubeMainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

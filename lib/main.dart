import 'package:flutter/material.dart';
import 'package:sub_column_row_image/youtube_main_screen.dart';

final dummyItems = [
  'http://goldshell.co.kr/web/product/big/201909/0afaa8a4d640df8bec11e5863403c4e2.jpg',
  'http://www.dorocy.co.kr/shopimages/dorocyshop/2030000004042.jpg?1642389149',
  'http://m.e-sang.co.kr/web/product/big/20191115/233261bfc05202b353eaf20b64319639.jpg',
];

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
      home: const youtubeMainScreen(),
    );
  }
}

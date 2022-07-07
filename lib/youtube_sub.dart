import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sub_column_row_image/main.dart';

class YoutubeSubScreen extends StatelessWidget {
  const YoutubeSubScreen(index, {Key? key}) : super(key: key);
  final int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mytitle[index]),
      ),
      body: SafeArea(
        child: Container(
          child: ,
        ),
      ),
    );
  }
}

class ShowAbout extends StatelessWidget {
  const ShowAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sub_column_row_image/main.dart';

class YoutubePlayScreen extends StatelessWidget {
  const YoutubePlayScreen(index, {Key? key}) : super(key: key);
  final int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mytitle[index]),
      ),
      body: SafeArea(
        child: Container(child: ShowAbout(index)),
      ),
    );
  }
}

class ShowAbout extends StatelessWidget {
  ShowAbout(index, {Key? key}) : super(key: key);

  final int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //show image
        Image.network(
          dummyItems[index],
          fit: BoxFit.cover,
        ),

        //show title
        Text(
          mytitle[index],
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),

        //show Viewcount
        Row(
          children: [
            Flexible(
              flex: 4,
              child: Text(myclickView[index]),
            ),
            const Flexible(
              flex: 1,
              child: Text(' '),
            ),
            Flexible(
              flex: 2,
              child: Row(
                children: [
                  Icon(Icons.thumb_up_outlined),
                  Icon(Icons.thumb_down_outlined),
                ],
              ),
            ),
          ],
        ),

        //show account id

        //show icons
      ],
    );
  }
}

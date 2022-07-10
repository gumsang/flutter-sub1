import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sub_column_row_image/components/youtube_list.dart';

class YoutubeMainScreen extends StatelessWidget {
  YoutubeMainScreen({Key? key}) : super(key: key);

//PlayList(this.title, this.date, this.id, this.idUrl, this.imageUrl)
  final playList = List<PlayList>.generate(
    20,
    (i) => const PlayList(
        '[#티전드] (2시간) 수근이 김장 잘하지~^^ 개그 장인 이수근의 인간문화재 등극이 시급합니다🤣 | #신서유기8 #신서유기7',
        '조회수 1,949,215회 · 2022. 5. 15.',
        'tvN D ENT',
        'https://yt3.ggpht.com/aQq9OjYxeYTQ9F3sgkmfmv0gH1bigSr5tJLyDR11RJFa9bGxgci5Jw0Y9tDP7eNBm8AQqyx1Qi8=s176-c-k-c0x00ffffff-no-rj',
        'https://i.ytimg.com/vi/Q_TAgPgfoPk/hqdefault.jpg?sqp=-oaymwEjCNACELwBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLA2ePlCc5TzkDTTkQ0JAwLlEwRGdg'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        // centerTitle: true,
        title: Text("YouTube"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.tv)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.notifications_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.circle)),
        ],
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {},
                  child: Ink.image(
                    image: NetworkImage(
                      playList[index].imageUrl,
                    ),
                    fit: BoxFit.cover,
                    height: 100,
                    width: 150,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                ViewTitle(playList[index].title, playList[index].date,
                    playList[index].id, playList[index].idUrl),
              ],
            ),
          );
        },
      ),
      // backgroundColor: Colors.black,
    );
  }
}

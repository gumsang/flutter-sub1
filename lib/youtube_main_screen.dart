import 'package:flutter/material.dart';
import 'package:sub_column_row_image/components/youtube_list.dart';
import 'package:sub_column_row_image/youtube_detail_screen.dart';

class YoutubeMainScreen extends StatelessWidget {
  YoutubeMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        // centerTitle: true,
        title: const Text("YouTube"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.tv)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.circle)),
        ],
      ),
      body: ListView.builder(
        itemCount: myList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              YoutubeDetailScreen(myList[index])),
                    );
                  },
                  child: Ink.image(
                    image: NetworkImage(
                      myList[index].imageUrl,
                    ),
                    fit: BoxFit.cover,
                    //절대값에서 화면 상대값으로 변경해주어야함
                    height: 100,
                    width: 150,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                ViewTitle(myList[index].title, myList[index].date,
                    myList[index].id, myList[index].idUrl),
              ],
            ),
          );
        },
      ),
      // backgroundColor: Colors.black,
    );
  }
}

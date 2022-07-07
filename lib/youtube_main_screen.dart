import 'package:flutter/material.dart';
import 'package:sub_column_row_image/main.dart';
import 'package:sub_column_row_image/youtube_sub.dart';

class youtubeMainScreen extends StatelessWidget {
  const youtubeMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Text('FirstApp'),
        actions: [
          IconButton(onPressed: (() {}), icon: Icon(Icons.add_a_photo)),
          IconButton(onPressed: (() {}), icon: Icon(Icons.notifications)),
          IconButton(onPressed: (() {}), icon: Icon(Icons.list_rounded)),
        ],
      ),
      body: _listView(),
    );
  }

  Widget _listView() {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: dummyItems.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => YoutubeSubScreen(index),
                      ),
                    );
                  },
                  child: Image.network(
                    dummyItems[index],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: RichText(
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          text: TextSpan(
                            text: mytitle[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        myclickView[index],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(myidImageUrl[index]),
                          ),
                          Text(
                            myid[index],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

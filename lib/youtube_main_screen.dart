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
        return Container(
          height: 50,
          child: Center(
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => youtubeSubScreen()),
                    );
                  },
                  child: Image.network(dummyItems[index]),
                ),
                Text('Entry $index'),
              ],
            ),
          ),
        );
      },
    );
  }
}

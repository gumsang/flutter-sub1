import 'package:flutter/material.dart';
import 'package:youtube_clone/components/youtube_list.dart';

class YoutubeDetailScreen extends StatelessWidget {
  const YoutubeDetailScreen(this.myPly, {Key? key}) : super(key: key);

  final myPly;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(myPly.title),
      ),
      body: SafeArea(
        child: Container(
          child: Image.network(
            myPly.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

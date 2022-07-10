import 'package:flutter/material.dart';

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
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network(
                  myPly.imageUrl,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

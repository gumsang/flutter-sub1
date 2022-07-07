import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class youtubeSubScreen extends StatelessWidget {
  const youtubeSubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Container(
            width: 50,
            height: 50,
            child: Text("뒤로가기"),
          ),
        ),
      ),
    );
  }
}

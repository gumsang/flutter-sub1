import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PlayList {
  final String title;
  final String imageUrl;
  final String date;
  final String idUrl;
  final String id;

  const PlayList(this.title, this.date, this.id, this.idUrl, this.imageUrl,
      {Key? key});
}

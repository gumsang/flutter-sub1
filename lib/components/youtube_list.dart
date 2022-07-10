import 'package:flutter/material.dart';

class PlayList {
  final String title;
  final String imageUrl;
  final String date;
  final String idUrl;
  final String id;

  const PlayList(this.title, this.date, this.id, this.idUrl, this.imageUrl,
      {Key? key});
}

class ViewTitle extends StatelessWidget {
  final String myTitle;
  final String myDate;
  final String myId;
  final String myIdUrl;

  const ViewTitle(this.myTitle, this.myDate, this.myId, this.myIdUrl);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            myTitle,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            myDate,
            style: const TextStyle(fontSize: 12),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 13,
                backgroundImage: NetworkImage(myIdUrl),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                myId,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
